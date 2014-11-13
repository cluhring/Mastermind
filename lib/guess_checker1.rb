class GuessChecker1
  def initialize(command, secret_sequence)
    @command = command                      # => "obyr"
    @secret_sequence = secret_sequence      # => ["r", "b", "y", "o"]
    # @user_input = user_input.split(//)            # => ["o", "b", "y", "r"]
    # @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  end

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
