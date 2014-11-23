require_relative 'printer'
class Load

  def initialize(instream, outstream, command, criteria, printer)
    @command   = command
    @instream  = instream
    @outstream = outstream
    @criteria  = criteria
    @printer   = printer
  end

  def call
    puts "you are in the load class"
  end
end
