class Mutations::DoFoo < GraphQL::Schema::Mutation
  field :processId, String, null: true
  field :errors, [String], null: false

  def resolve
    result = {
      processId: "foo done",
      errors: []
    }

    puts "DEBUG: DooFoo.resolve wants to return this: #{result.inspect}"
    result
  end
end