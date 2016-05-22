require 'json'
require 'json-schema'
require_relative 'jsonapi/schema'
STANDARD_SCHEMA = JsonApi::Schema.instance

require_relative 'jsonapi/validator'
Dir["tasks/**/*.rake"].each { |ext| load ext } if defined?(Rake)