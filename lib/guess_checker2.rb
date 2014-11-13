class GuessChecker2
  def initialize(command, secret_sequence)
    @command = command                          # => "obyr"
    @secret_sequence = secret_sequence          # => "ybyy"
  end

  def correct_sequence
  command = @command.split(//)                  # => ["o", "b", "y", "r"]
  # secret_sequence = @secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  tc1 = @command[0] <=> @secret_sequence[0]     # => -1
  tc2 = @command[1] <=> @secret_sequence[1]     # => 0
  tc3 = @command[2] <=> @secret_sequence[2]     # => 0
  tc4 = @command[3] <=> @secret_sequence[3]     # => -1
  total_correct = tc1.to_i + tc2.to_i + tc3.to_i + tc4.to_i        # => -2

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

# guess = GuessChecker2.new("obyr", "ybyy")  # => #<GuessChecker2:0x007fcbc2863040 @command="obyr", @secret_sequence="ybyy">
# guess.correct_sequence                     # => 2
