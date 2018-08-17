use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :darkfight_cms, DarkfightCmsWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :darkfight_cms, DarkfightCms.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "darkfight_cms_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
