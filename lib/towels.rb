# frozen_string_literal: true

require_relative "towels/version"
require_relative "towels/cmd/args"
require_relative "towels/gui"

module Towels
  class Error < StandardError; end
  # Your code goes here...
end

def main
  options = Towels::Cmd::Args.parse %w[--help]
  if options.has_key?(:gui) 
    Towels::Gui::TopWindow.new.launch
  end
end

if __FILE__ == $0
  main()
end