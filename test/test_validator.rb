require "minitest/autorun"
require_relative  '../lib/jsonapi-validator.rb'
class TestSchema < Minitest::Test
  def setup
    @invalid_object = {}
    @valid_object = {
	  "data": {
	    "type": "articles",
	    "id": "1"
	  }
	}
  end

  def test_invalid_json_object
    assert_equal JsonApi::Validator.object(@invalid_object)[0].size > 0 ,true
  end

  def test_valid_json_object
    assert_equal JsonApi::Validator.object(@valid_object),[]
  end
end