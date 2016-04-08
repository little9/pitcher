require 'optparse'
require 'ostruct'

module Pitcher
  class PitcherOpts

    def parse(args)
      options = OpenStruct.new

      OptionParser.new do |opts|
        opts.banner = 'Usage: pitcher -csv /path/to/csv.file'

        opts.on("-csv", "--csv", 'Path to CSV file') do |csv|
          options.csv = csv
        end

        opts.on("-settings", "--settings", "Path to the settings file") do |settings|
          options.settings = settings
        end

        opts.on("-h", "--help", "Pitcher Help") do
          puts opts
          exit
        end

      end.parse!
      options
    end
  end
end