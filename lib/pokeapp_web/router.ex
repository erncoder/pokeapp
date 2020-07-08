defmodule PokeappWeb.Router do
  use PokeappWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: PokeappWeb.Schema

    forward "/", Absinthe.Plug, schema: PokeappWeb.Schema
  end
end
