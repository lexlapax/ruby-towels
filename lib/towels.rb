# frozen_string_literal: true

require_relative "towels/version"
require_relative "towels/cmd/args"

module Towels
  class Error < StandardError; end
  # Your code goes here...
end

def main
  options = Towels::Cmd::Args.parse %w[--help]
  
end

if __FILE__ == $0
  main()
end