require_relative 'game'            # => true
# require_relative 'printer'         # => false
# require_relative 'code_generator'  # => false
# require_relative 'guess_checker1'  # => false
# require_relative 'guess_checker2'  # => false
# require_relative 'timer'           # => false

class CLI
  attr_reader :command,   # => :command
              :printer,   # => :printer
              :instream,  # => :instream
              :outstream  # => nil

  def initialize(instream, outstream)
    @command = ""
    @printer = Printer.new
    @instream = instream  #stdin??? (Josh Cheek)
    @outstream = outstream  #stdout??? (Josh Cheek)
  end

  def call
    outstream.puts printer.intro
    until finished?
      outstream.puts printer.command_request
      @command = instream.gets.strip
      process_initial_commands
    end
      outstream.puts printer.game_quit
  end

private  # => CLI

  def process_initial_commands
    case
    when play?
      outstream.puts printer.play_instructions
      game = Game.new(instream, outstream, printer)
      game.play
    when instructions?
      outstream.puts printer.game_instructions
    when finished?
      outstream.puts printer.game_quit
    else
      outstream.puts printer.not_a_valid_command
    end
  end

  def play?
    command == "p" || command == "play"
  end

  def instructions?
    command == "i" || command == "instructions"
  end

  def finished?
    command == "q" || command == "quit"
  end
end
