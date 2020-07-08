defmodule PokeappWeb.Resolvers.PokeAPI do

  def get_pokemon(_parent, arg, _resolution) do
    arg = Map.values(arg) |> List.first
    case Pokeapp.APIClient.get_pokemon(arg) do
      {:ok, resp} ->
        {:ok, %{id: resp["id"], name: resp["name"]}}
      _ ->
        {:error, "Request to outside pokemon API failed"}
    end
  end

end
