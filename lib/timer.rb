# timer function to be displayed after guessing correct sequence

class Timer
  attr_reader :time  # => nil
  def initialize
    @time = time     # => nil
  end

  def start_time
    Time.now      # => 2014-11-13 12:31:54 -0700
  end

  def end_time
    Time.now    # => 2014-11-13 12:31:54 -0700
  end

  def total_time
    @time = start_time - end_time  # => -3.2e-05
  end
end

time3 = Timer.new  # => #<Timer:0x007ff4de0d40a0 @time=nil>
time3.total_time   # => -3.2e-05
