require_relative "lib/samplesite/version"

Gem::Specification.new do |spec|
  spec.name          = "samplesite"
  spec.version       = Samplesite::VERSION
  spec.authors       = ["Arsalan Khan"]
  spec.email         = ["arsalan@timedilationv2.com"]

  spec.summary       = "Sample Ruby Gem for static site action test"
  spec.description   = "This is a placeholder gem to test GitHub Actions publishing and automation."
  spec.homepage      = "https://github.com/timedilationv2/samplesite"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
end
