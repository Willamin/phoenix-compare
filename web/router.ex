defmodule Comparetest.Router do
  use Comparetest.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Comparetest do
    pipe_through :api
  end
end
