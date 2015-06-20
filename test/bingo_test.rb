require "test_helper"

class BingoTest < Minitest::Test
  def json_response
    File.read(File.expand_path("../fixtures/response.json", __FILE__))
  end

  def test_search_method_calls_GET_request
    search_request = stub_request(:get, Bingo::BingoClient::API_ENDPOINT).
      with(query: hash_including(
        "Query" => "'ruby'",
        "$format" => "json"
        )
      ).to_return(status: 200, body: json_response)

    results = Bingo.search("dummy_token", "ruby")
    assert_requested search_request
    assert { results.size == 1 }
    assert { results[0]["Title"] == "Ruby - Wikipedia, la enciclopedia libre" }
  end
end
