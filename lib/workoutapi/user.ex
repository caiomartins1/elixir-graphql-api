defmodule Workoutapi.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Workoutapi.Training

  @primary_key {:id, :binary_id, autogenerate: true}

  @fields [:email, :password, :name]

  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string

    has_one :training, Training

    timestamps()
  end

  def changeset(params) do
    # same as %__MODULE__{}
    %Workoutapi.User{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:password, min: 6)
    |> validate_length(:name, min: 2)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
  end
end
