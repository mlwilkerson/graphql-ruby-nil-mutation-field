class Mutations::DoAlpha < GraphQL::Schema::Mutation

  def resolve
    return { alpha: "alpha done" }
  end
end
