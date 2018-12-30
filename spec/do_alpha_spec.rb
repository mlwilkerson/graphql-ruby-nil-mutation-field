require 'rails_helper'

RSpec.describe 'mutation { doAlpha }', type: :request do
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

  context "doAlpha" do
    let(:query_string) {%|
        mutation {
          doAlpha {
            alpha
          }
        }
      |}

    it 'works' do
      expect(result['data']['doAlpha']['alpha']).to eq "alpha done"
    end
  end
end
