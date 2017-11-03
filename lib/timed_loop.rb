module Gorodscy::TimedLoop
  def every seconds
    Thread.new do
      loop do
        sleep(seconds)
        yield
      end
    end
  end
end