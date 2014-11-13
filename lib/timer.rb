class Timer
  def start
    @start_time = Time.now
  end

  def stop
    @end_time = Time.now
  end

  def total_time
    (@end_time||Time.now) - @start_time
  end
end
