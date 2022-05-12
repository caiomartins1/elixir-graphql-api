defmodule Workoutapi.Trainings.Create do
  alias Workoutapi.{Repo, Training}

  def call(params) do
    params
    |> Training.changeset()
    |> Repo.insert()
  end
end
