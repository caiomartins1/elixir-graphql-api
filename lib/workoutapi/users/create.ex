defmodule Workoutapi.Users.Create do
  alias Workoutapi.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert
  end
end
