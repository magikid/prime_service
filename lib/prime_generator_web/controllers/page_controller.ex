defmodule PrimeGeneratorWeb.PageController do
  use PrimeGeneratorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
