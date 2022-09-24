require 'optparse'
module Towels::Cmd
  module Args
  
    # The actual options will be stored in this hash


    def Args.parse(options)
      args = {} 
      #Options = {}
      #Options.new("#{self.to_s.split('::')[-1]}")

      # Set up the options you are looking for
      opt_parser = OptionParser.new do |parser|
          parser.banner = "Usage: #{$0} [options] ..."
    
          parser.on("-c", "--cmd CMDOPTS", "default option, run command") { |n| args[:cmd] = n }

          parser.on("-g", "--gui", "run the Towels gui") { |n| args[:gui] = true }
    
          parser.on("-h", "--help", "Prints this help") do
            puts parser
            exit
          end
        end

      # The parse! method also removes any options it finds from ARGV.
      opt_parser.parse!
      return args
    end #parse

  end #Args

end #cmd

