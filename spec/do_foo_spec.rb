require 'rails_helper'

RSpec.describe 'mutation { doFoo }', type: :request do
  let(:context) { { } }
  let(:variables) { { } }

  # Call `result` to execute the query
  let(:result) {
    res = MySchema.execute(
        query_string,
        context: context,
        variables: variables
    )
    # Print any errors
    if res["errors"]
      pp res
    end
    res
  }

  context "doFoo" do
    let(:query_string) {%|
        mutation {
          doFoo {
            processId
            numOne
            someId
          }
        }
      |}

    it 'resolves processId' do
      puts "DEBUG: spec gets: #{result.inspect}"
      expect(result['data']['doFoo']['processId']).to eq "foo done"
    end

    it 'resolves numOne' do
      expect(result['data']['doFoo']['numOne']).to eq 42
    end

    it 'resolves someId' do
      expect(result['data']['doFoo']['someId']).to eq "abc123"
    end
  end
end
