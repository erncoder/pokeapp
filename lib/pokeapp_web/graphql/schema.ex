defmodule PokeappWeb.Schema do
  alias PokeappWeb.{Resolvers, Schema}

  use Absinthe.Schema
  import_types(Schema.Types)

  query do
    @desc "Returns pokemon id and name"
    field :pokemon, :pokemon do
      arg(:id, :integer)
      arg(:name, :string)
      resolve(&Resolvers.PokeAPI.get_pokemon/3)
    end
  end
end
