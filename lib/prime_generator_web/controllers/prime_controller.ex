defmodule PrimeGeneratorWeb.PrimeController do
  use PrimeGeneratorWeb, :controller

  alias Primes

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"number" => number}) do
    {parsed_number, _} = Integer.parse(number)

    if parsed_number > 1000 do
      redirect(conn, to: "/primes/error")
    end

    nth_prime = Primes.primes |> Enum.at(parsed_number - 1)

    conn
    |> assign(:number, parsed_number)
    |> assign(:nth_prime, nth_prime)
    |> render(:show)
  end

  def error(conn, _params) do
    render(conn, :error)
  end
end
