module Gorodscy::TimedLoop
  def every seconds, condition
    Thread.new do
      loop do
        sleep(seconds)

        unless condition.call
          Thread.stop
        end

        yield
      end
    end
  end
end