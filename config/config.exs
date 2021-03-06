# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :workoutapi,
  ecto_repos: [Workoutapi.Repo]

config :workoutapi, Workoutapi.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :workoutapi, WorkoutapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dsVuFL7A9lbdKIG1VMrlh9uLS5P8nlLsuSo8/2vL0CvaspFTO/Dx6ohg5a83Lsmb",
  render_errors: [view: WorkoutapiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Workoutapi.PubSub,
  live_view: [signing_salt: "f6MNsKm6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
