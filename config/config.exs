# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :asen,
  ecto_repos: [Asen.Repo]

# Configures the endpoint
config :asen, AsenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fJCdZxZ7B3ZvcxWYzwC6t7nQJYejcDv136UuoBkH6OkPcN3b8kaPCdxHEgROGTQW",
  render_errors: [view: AsenWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Asen.PubSub,
  live_view: [signing_salt: "o4v6na/i"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
