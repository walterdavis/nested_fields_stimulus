# frozen_string_literal: true

require 'rails/generators'

module NestedFieldsStimulus
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    desc "This generator installs the Stimulus controller for nested forms, and optionally, Stimulus itself."

    def create_controller
      template "nested_fields_stimulus_controller.js.erb", "app/javascript/controllers/nested_fields_stimulus_controller.js"
    end
    
    private
    
    def rails_major
      Rails.version.split('.').first.to_i
    end
  end
end