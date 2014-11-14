require_relative 'code_generator'  # => true
require_relative 'printer'         # => true
require_relative 'position_checker'  # => true
require_relative 'color_checker'  # => true
require_relative 'timer'           # => true

class Game
  attr_reader :guess,            # => :guess
              :turns,            # => :turns
              :secret_sequence,  # => :secret_sequence
              :printer,          # => :printer
              :command,          # => :command
              :instream,         # => :instream
              :outstream,        # => :outstream
              :time     # => :time
              # :end_time,         # => :end_time

  def initialize(instream, outstream, printer)
    @guess           = ""
    @turns           = 1
    @printer         = printer
    @command         = ""
    @instream        = instream
    @outstream       = outstream
    @time            = Timer.new
    @secret_sequence = CodeGenerator.new

  end                                                                                               # => nil

  def play
    @time.start
    until exit? || correct?
      @correct_colors  = ColorChecker.new(@command, @secret_sequence.build_secret_sequence_array)
      @correct_positions = PositionChecker.new(@command, @secret_sequence.build_secret_sequence_array)
      @command = @instream.gets.strip
      @guess = command.split(//)
      process_game_turn
    end
    @time.stop
    outstream.puts printer.ending(@command, turns, @time.total_time)
  end

  def process_game_turn
    case
    when exit?
      outstream.puts printer.game_quit
    when instructions?
      outstream.puts printer.game_instructions
    when too_short?
      outstream.puts printer.too_short
    when too_long?
      outstream.puts printer.too_long
    when incorrect?
      outstream.puts printer.wrong_guess(@command, @correct_colors.how_many_correct_colors, @correct_positions.correct_sequence, turns)
      add_turn
      puts "#{@secret_sequence.build_secret_sequence_array}"
      puts "#{@time.total_time}"
    end
  end

  def add_turn
    @turns += 1
  end

  def too_short?
    command.length < 4
  end

  def too_long?
    command.length > 4
  end

  def correct?
    @guess == @secret_sequence.build_secret_sequence_array
  end

  def incorrect?
    !correct?
  end

  def exit?
    command == "q" || command == "quit"
  end

  def instructions?
    command == "i" || command == "instructions"
  end

  def play?
    command == "p" || command == "play"
  end

end
