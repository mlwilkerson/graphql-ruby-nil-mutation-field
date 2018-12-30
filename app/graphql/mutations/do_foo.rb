class Mutations::DoFoo < GraphQL::Schema::Mutation
  field :processId, String, null: true
  field :numOne, Int, null: true
  field :someId, ID, null: true

  field :errors, [String], null: false

  def resolve
    result = {
      processId: "foo done",
      numOne: 42,
      someId: "abcd123",
      errors: []
    }

    puts "DEBUG: DooFoo.resolve wants to return this: #{result.inspect}"
    result
  end
end