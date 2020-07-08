defmodule PokeappWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :pokemon do
    field(:id, :integer)
    field(:name, :string)
  end
end
