defmodule WorkoutapiWeb.Resolvers.Training do
  def create(%{input: params}, _context) do
    Workoutapi.Trainings.Create.call(params)
  end
end
