

class Cli
  attr_reader :instream, :outstream

  def initialize(instream, outstream)
    @command = ""
    @instream = instream
    @outstream = outstream
  end

  def call
    puts "hello"
    process_commands
  end

  def process_commands

  end


end
