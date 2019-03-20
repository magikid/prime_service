defmodule PrimeGeneratorWeb.Router do
  use PrimeGeneratorWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PrimeGeneratorWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/primes", PrimeController, :index
    get "/primes/error", PrimeController, :error
    get "/primes/:number", PrimeController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", PrimeGeneratorWeb do
  #   pipe_through :api
  # end
end
