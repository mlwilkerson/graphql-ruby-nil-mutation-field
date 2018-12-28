module Types
  class MutationType < Types::BaseObject
    field :doFoo, mutation: Mutations::DoFoo
  end
end
