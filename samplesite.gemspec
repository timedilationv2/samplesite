Gem::Specification.new do |spec|
  spec.name          = "samplesite"
  spec.version       = "0.1.0"
  spec.authors       = ["Arsalan Khan"]
  spec.email         = ["arsalan@timedilationv2.com"]

  spec.summary       = "A static site built with Jekyll, packaged as a Ruby gem"
  spec.description   = "This gem wraps a Jekyll-based static site for deployment and sharing."
  spec.homepage      = "https://github.com/timedilationv2/samplesite"
  spec.license       = "MIT"

  spec.files         = Dir.glob("**/*").reject { |f| f.include?(".git") || File.directory?(f) }
  spec.require_paths = ["."]
  spec.add_runtime_dependency "jekyll", ">= 4.0"
end

