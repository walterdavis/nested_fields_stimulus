require "nested_fields_stimulus/version"
require "nested_fields_stimulus/engine"

module NestedFieldsStimulus
  require 'nested_fields_stimulus/engine' if defined?(Rails)
  class Error < StandardError; end
  # Your code goes here...
end
