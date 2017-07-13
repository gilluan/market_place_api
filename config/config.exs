# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :market_place_api,
  ecto_repos: [MarketPlaceApi.Repo]

# Configures the endpoint
config :market_place_api, MarketPlaceApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t89nOF4Am05azbDkUr2MU9fTW9UiFBsHrTzk4lalpxpV8lryyYhxDun6//pO6aYq",
  render_errors: [view: MarketPlaceApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: MarketPlaceApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
