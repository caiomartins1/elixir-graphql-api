defmodule WorkoutapiWeb.Resolvers.User do
  def get(%{id: user_id}, _context), do: Workoutapi.Users.Get.call(user_id)

  def create(%{input: params}, _context) do
    Workoutapi.Users.Create.call(params)
  end
end
