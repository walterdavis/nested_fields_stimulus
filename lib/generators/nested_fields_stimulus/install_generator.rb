# frozen_string_literal: true

require 'rails/generators'

module NestedFieldsStimulus
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    desc "This generator installs the Stimulus controller for nested forms, and optionally, Stimulus itself."

    def create_controller
      template "nested_fields_stimulus_controller.js.erb", "app/javascript/controllers/nested_fields_stimulus_controller.js"
    end
    
    def install_stimulus
      if stimulus_ready?
        system 'yarn add stimulus'
        system 'bin/rails webpacker:install:stimulus'
        inject_into_file 'app/javascript/packs/application.js', STIM, before: /\n\s*import "controllers"/
      else
        inject_into_file 'app/views/layouts/application.html.erb',
                         "\n    <script src=\"https://unpkg.com/stimulus/dist/stimulus.umd.js\"></script>",
                         before: /\n\s*<\/head>/
      end
    end
    
    private
    
    def stimulus_ready?
      major, minor = Rails.version.split('.', 2).map(&:to_i)
      
      major > 5 || (major ==  5 && minor == 2)
    end
    
    STIM = <<~"JS"
    
      import { Application } from "stimulus"
      import { definitionsFromContext } from "stimulus/webpack-helpers"

      const application = Application.start()
      const context = require.context("../controllers", true, /\.js$/)
      application.load(definitionsFromContext(context))
    
    JS
  end
end