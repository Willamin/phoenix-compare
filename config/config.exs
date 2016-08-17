# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :comparetest,
  ecto_repos: [Comparetest.Repo]

# Configures the endpoint
config :comparetest, Comparetest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yW2xe8pSHtjrQF8Nvw86+ZcKbmaiP4EGpy1J4J3saHUd3y1W7ZPhMLPmI4E73Hf4",
  render_errors: [view: Comparetest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Comparetest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
