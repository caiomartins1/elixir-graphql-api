defmodule WorkoutapiWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias WorkoutapiWeb.Resolvers.User, as: UserResolver

  import_types WorkoutapiWeb.Schema.Types.User

  object :root_query do
    field :get_user, type: :user do
      arg :id, non_null(:uuid4)

      resolve &UserResolver.get/2
    end
  end

  object :root_mutation do
    field :create_user, type: :user do
      arg :input, non_null(:create_user_input)

      resolve &UserResolver.create/2
    end
  end
end
