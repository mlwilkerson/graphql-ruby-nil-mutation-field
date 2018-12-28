require 'rails_helper'

RSpec.describe 'Mutations', type: :request do
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
          }
        }
      |}

    it 'works' do
      puts "DEBUG: spec gets: #{result.inspect}"
      expect(result['data']['doFoo']['processId']).to eq "foo done"
    end

  end

#  context "doBar" do
#    let(:query_string) {%|
#        mutation {
#          doBar {
#            processId
#          }
#        }
#      |}
#
#    it 'works' do
#      expect(result['data']['doFoo']['processId']).to eq "foo done"
#    end
#
#  end
end
