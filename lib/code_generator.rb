# randomly pick a winning combination of colors/positions []
# define sequence [colors]

class CodeGenerator
  # attr_reader :secret_sequence  # => nil

  def initialize
    @secret_sequence = []                                      # => []
    4.times {@secret_sequence << ["r", "g", "b", "y"].sample}  # => 4
  end

  def build_secret_sequence_array
    @secret_sequence               # => ["r", "r", "y", "b"]
  end

end
#
code = CodeGenerator.new          # => #<CodeGenerator:0x007fb52d86c998 @secret_sequence=["r", "r", "y", "b"]>
code.build_secret_sequence_array  # => ["r", "r", "y", "b"]
