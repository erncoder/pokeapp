defmodule Pokeapp.APIClient do
  @base_url "https://pokeapi.co/api/v2/pokemon/"

  def get_pokemon(arg) do
    resp =
      (@base_url <> "#{arg}")
      |> HTTPoison.get!
      |> Map.get(:body)
      |> Poison.decode!

      {:ok, resp}
  end
end
