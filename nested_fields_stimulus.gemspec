require_relative 'lib/nested_fields_stimulus/version'

Gem::Specification.new do |spec|
  spec.name          = "nested_fields_stimulus"
  spec.version       = NestedFieldsStimulus::VERSION
  spec.authors       = ["Walter Davis"]
  spec.email         = ["waldavis@mail.med.upenn.edu"]

  spec.summary       = %q{Add Stimulus-powered nested form fields to your application.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/walterdavis/nested_fields_stimulus"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files         = Dir["{app,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
