require "minitest/autorun"
require_relative  '../lib/jsonapi-validator.rb'
class TestSchema < Minitest::Test
  def setup
    @instance = JsonApi::Schema.instance
  end

  def test_that_validates_schema_load
    assert_equal @instance["title"],"JSON API Schema"
  end
end