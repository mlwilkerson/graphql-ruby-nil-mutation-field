module Types
  class MutationType < Types::BaseObject
    field :doFoo, mutation: Mutations::DoFoo
    field :doBar, mutation: Mutations::DoBar
  end
end
