require 'rails_helper'

RSpec.describe 'mutation { doBar }', type: :request do
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

  context "doBar" do
    let(:query_string) {%|
        mutation {
          doBar {
            item {
              title
            }
          }
        }
      |}

    it 'works' do
      expect(result['data']['doBar']['item']['title']).to eq "bar title"
    end

  end
end
