# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :my_dashboard,
  ecto_repos: [MyDashboard.Repo]

# Configures the endpoint
config :my_dashboard, MyDashboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RfpiZOjanM6rs3Z1OrO4TfXBjJLhK6kbTTMUr7Mm3eEUAssRFObqPXey7J40OPjV",
  render_errors: [view: MyDashboardWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MyDashboard.PubSub,
  live_view: [signing_salt: "JkLlfnS2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
