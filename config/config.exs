# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :darkfight_cms,
  ecto_repos: [DarkfightCms.Repo]

# Configures the endpoint
config :darkfight_cms, DarkfightCmsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X0TqzgKcMh9RKRSewtvPdxY9CB2vpDTNGiJFm0WwnAqcPUZWgCgSxtY1XIbhXndm",
  render_errors: [view: DarkfightCmsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DarkfightCms.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
