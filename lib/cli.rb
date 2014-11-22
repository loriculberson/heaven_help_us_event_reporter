
class Cli
  attr_reader :instream, :outstream

  def initialize(instream, outstream)
    @command = ""
    @instream = instream
    @outstream = outstream
  end

  def call
    puts "hello"
    until quit?
      user_input
      process_commands
    end
    puts "you got here"
  end

  def process_commands
     case
     when load?
      puts "You got some loaded files"
    when find?
      puts "You found some files"
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
    @command = gets.strip.downcase
  end
end
