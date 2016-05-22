require "minitest/autorun"
require_relative  '../lib/jsonapi-validator.rb'
class TestSchema < Minitest::Test
  def setup
    @instance = STANDARD_SCHEMA
  end

  def test_schema_load
    assert_equal @instance["title"],"JSON API Schema"
  end
end