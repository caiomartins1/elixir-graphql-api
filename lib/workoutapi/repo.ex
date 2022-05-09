defmodule Workoutapi.Repo do
  use Ecto.Repo,
    otp_app: :workoutapi,
    adapter: Ecto.Adapters.Postgres
end
