require 'json'
require 'json-schema'
require_relative 'jsonapi/schema'
require_relative 'tasks/jsonapi-validator'
require_relative 'tasks/minitest'

STANDARD_SCHEMA = JsonApi::Schema.instance

require_relative 'jsonapi/validator'