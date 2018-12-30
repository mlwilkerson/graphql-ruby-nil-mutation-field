module Types
  class MutationType < Types::BaseObject
    field :doFoo, mutation: Mutations::DoFoo
    field :doBar, mutation: Mutations::DoBar
    field :doAlpha, Types::DoAlphaResult, mutation: Mutations::DoAlpha
  end
end
