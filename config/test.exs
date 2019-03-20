use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :prime_generator, PrimeGeneratorWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :prime_generator, PrimeGenerator.Repo,
  username: "postgres",
  password: "postgres",
  database: "prime_generator_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
