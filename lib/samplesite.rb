# lib/samplesite.rb

require_relative "samplesite/version"

module Samplesite
  class Error < StandardError; end

  def self.hello
    "Hello from Samplesite Gem!"
  end
end

