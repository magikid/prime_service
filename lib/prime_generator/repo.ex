defmodule PrimeGenerator.Repo do
  use Ecto.Repo,
    otp_app: :prime_generator,
    adapter: Ecto.Adapters.Postgres
end
