defmodule MarketPlaceApi.Router do
  use MarketPlaceApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MarketPlaceApi do
    pipe_through :api

    resources "/categories", CategoryController, except: [:new, :edit]
  end
end
