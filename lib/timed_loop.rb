module Gorodscy::TimedLoop
  def every seconds, condition
    Thread.new do
      loop do
        unless condition.call
          Thread.stop
        end

        t = Time.now
        
        yield

        sleep(t + 1 - Time.now)
      end
    end
  end
end