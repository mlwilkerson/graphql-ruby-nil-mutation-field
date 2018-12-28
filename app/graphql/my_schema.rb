class MySchema < GraphQL::Schema
  query(Types::QueryType)
  mutation(Types::MutationType)

  #def self.resolve_type (_type, _obj, _ctx)
  #  raise "top-level resolve_type should not be reached"
  #end
end
