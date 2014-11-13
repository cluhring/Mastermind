class GuessChecker2
  def initialize(command, secret_sequence)
    @command = command.split(//)                  # => ["o", "b", "y", "r"]
    @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  end
#ef correct_positions
  # strand1 = @instream.split(//)
  # strand2 = @secret_sequence.split(//)
  def correct_sequence
  tc1 = @command[0] <=> @secret_sequence[0]       # => -1
  tc2 = @command[1] <=> @secret_sequence[1]       # => 0
  tc3 = @command[2] <=> @secret_sequence[2]       # => 0
  tc4 = @command[3] <=> @secret_sequence[3]       # => -1
  total_correct = tc1 + tc2 + tc3 + tc4           # => -2

  if total_correct == 0                    # => false
    4
  elsif total_correct == -1                # => false
    3
  elsif total_correct == -2                # => true
    2                                      # => 2
  elsif total_correct == -3
    1
  else total_correct == -4
    0
  end                                      # => 2
end
end
#   def initialize(user_input)
#     @user_input = user_input.split(//)  # => ["y", "Y", "y", "B"]
#     @valid_guess = 0                    # => 0
#   end
#
#   # def valid_length?
#   #   @user_input.length == 4
#   # end
#
#   def count_guesses
#     if user_input ==  # ~> NameError: undefined local variable or method `user_input' for #<Guess:0x007f95bc11b7d8>
#     valid_guess += 1
#   end
# end
#   # def valid_characters?
#   #   @user_input.
#   # end
#
# end
#
#
guess = GuessChecker2.new("obyr", "ybyy")  # => #<GuessChecker2:0x007fd734063430 @command=["o", "b", "y", "r"], @secret_sequence=["y", "b", "y", "y"]>
guess.correct_sequence                     # => 2

# 4 - (user_guess.sanitize - user_guess.split) = number of correct
