require 'minitest'
require_relative '../lib/cli'

class CliTest < Minitest::Test

  def test_can_get_help
    cli = CLI.new(nil,nil)
    cli.stub :command, "help"
    'help' do
    assert help?
  end
  end

end
