# track number of guesses taken
# What's your guess?"

class GuessChecker1
  def initialize(command, secret_sequence)
    @command = command                      # => "obyr"
    @secret_sequence = secret_sequence      # => ["r", "b", "y", "o"]
    # @user_input = user_input.split(//)            # => ["o", "b", "y", "r"]
    # @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  end
  #
  # def correct?
  #   @user_input == @secret_sequence
  # end
  #
  # def incorrect?
  #   !correct?
  # end

  # def correct_positions
  #   strand1 = @user_input.split(//)
  #   strand2 = @secret_sequence.split(//)
  #   tc1 = strand1[0] <=> strand2[0]
  #   tc2 = strand1[1] <=> strand2[1]
  #   tc3 = strand1[2] <=> strand2[2]
  #   tc4 = strand1[3] <=> strand2[3]
  #   total_correct = tc1 + tc2 + tc3 + tc4
  #
  #   if total_correct == 0
  #     puts 4
  #   elsif total_correct == -1
  #     puts 3
  #   elsif total_correct == -2
  #     puts 2
  #   elsif total_correct == -3
  #     puts 1
  #   else total_correct == -4
  #     puts 0
  #   end
  # end

def how_many_correct_colors
  guess = @command.split(//)  # => ["o", "b", "y", "r"]
  s_s = @secret_sequence      # => ["r", "b", "y", "o"]
    color1 = guess.pop        # => "r"
    color2 = guess.pop        # => "y"
    color3 = guess.pop        # => "b"
    color4 = guess.pop        # => "o"

  if @secret_sequence.include?(color1)  # => true
  s_s.delete_at(s_s.index(color1))      # => "r"
  end                                   # => "r"

  if @secret_sequence.include?(color2)  # => true
  s_s.delete_at(s_s.index(color2))      # => "y"
  end                                   # => "y"

  if @secret_sequence.include?(color3)  # => true
  s_s.delete_at(s_s.index(color3))      # => "b"
  end                                   # => "b"

  if @secret_sequence.include?(color4)  # => true
  s_s.delete_at(s_s.index(color4))      # => "o"
  end                                   # => "o"

  4 - s_s.count  # => 4
end
end

# guess1 = GuessChecker1.new("obyr", ["r", "b", "y", "o"])  # => #<GuessChecker1:0x007feebc116d60 @command="obyr", @secret_sequence=["r", "b", "y", "o"]>
# guess1.how_many_correct_colors                            # => 4
