# track number of guesses taken
# What's your guess?"

class GuessChecker1
  def initialize(command, secret_sequence)
    @command = command.split(//)                  # => ["o", "b", "y", "r"]
    @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
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
    color1 = @command.pop    # => "r"
    color2 = @command.pop    # => "y"
    color3 = @command.pop    # => "b"
    color4 = @command.pop    # => "o"

  if @secret_sequence.include?(color1)                        # => false
  @secret_sequence.delete_at(@secret_sequence.index(color1))
  end                                                         # => nil

  if @secret_sequence.include?(color2)                        # => true
  @secret_sequence.delete_at(@secret_sequence.index(color2))  # => "y"
  end                                                         # => "y"

  if @secret_sequence.include?(color3)                        # => true
  @secret_sequence.delete_at(@secret_sequence.index(color3))  # => "b"
  end                                                         # => "b"

  if @secret_sequence.include?(color4)                        # => false
  @secret_sequence.delete_at(@secret_sequence.index(color4))
  end                                                         # => nil

  correct_colors = 4 - @secret_sequence.count  # => 2
end
end

guess1 = GuessChecker1.new("obyr", "ybyy")  # => #<GuessChecker1:0x007fa26d87b308 @command=["o", "b", "y", "r"], @secret_sequence=["y", "b", "y", "y"]>
guess1.how_many_correct_colors              # => 2
