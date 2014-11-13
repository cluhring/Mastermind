# randomly pick a winning combination of colors/positions []
# define sequence [colors]

class CodeGenerator
  # attr_reader :secret_sequence  # => nil

  def initialize
    @secret_sequence = []  # => []
  end

  def build_secret_sequence_array
    4.times {@secret_sequence << ["r", "g", "b", "y"].sample}  # => 4
    @secret_sequence.to_a                                      # => ["y", "y", "r", "g"]
  end

end
#
code = CodeGenerator.new          # => #<CodeGenerator:0x007fc249990558 @secret_sequence=[]>
code.build_secret_sequence_array  # => ["y", "y", "r", "g"]
