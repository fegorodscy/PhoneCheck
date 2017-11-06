class Watch
  def initialize(time:, msg:)
    @time = time
    @thread = create_thread(time, msg)
  end

  def start
    @should_stop = false
    @thread.wakeup
  end

  def pause
    @should_stop = true
  end

  def stop
    @thread.kill
  end

  private

  def create_thread(time, msg)
    every time do
      if @should_stop
        Thread.stop
      end

      print "#{msg}: #{Time.now}\r\n"
    end
  end
end