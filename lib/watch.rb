class Watch
  def initialize(time:)
    @time = time
    @thread = create_thread(time)
  end

  def start
    @thread[:stop] = false
    @thread.wakeup
  end

  def pause
    @thread[:stop] = true
  end

  def stop
    @thread.kill
  end

  private

  def create_thread(time)
    every time do
      if Thread.current[:stop]
        Thread.stop
      end

      print "The current time is: #{Time.now}\r\n"
    end
  end
end