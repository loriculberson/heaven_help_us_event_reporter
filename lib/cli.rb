require_relative 'printer'
require_relative 'load'
class Cli
  attr_reader :instream, :outstream, :printer
  attr_accessor :criteria, :command

  def initialize(instream, outstream)
    @command = ""
    @instream = instream
    @outstream = outstream
    @criteria = []
    @printer = Printer.new(outstream)
  end

  def call
    puts "hello"
    until quit?
      user_input
      process_commands
    end
    puts "GOODBYE!!!!"
  end

  def process_commands
    case
    when load? then Load.new(instream, outstream, command, criteria, printer).call #now we can build the load class
    when find?
      puts "You found some files"
    when quit?
    end
  end

  def quit?
    @command == "quit" || @command == "q"
  end

  def load?
    @command == "load"
  end

  def find?
    @command == "find"
  end

  def user_input
    print "Enter Command: "
    input = instream.gets.strip.downcase.split(" ")
    self.criteria_input(input)
    self.command_input(input)
  end

  def criteria_input(input)
    input[1..-1]
  end

  def command_input(input)
    input[0]
  end
end
