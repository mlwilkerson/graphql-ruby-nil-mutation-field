class Mutations::DoBar < GraphQL::Schema::Mutation
  field :item, Types::ItemType, null: true

  def resolve
    {
      item: {
        title: "bar title"
      }
    }
  end
end