class Watch
  def initialize(time:, msg:)
    @time = time
    @thread = create_thread(time, msg)
    @should_run = true
  end

  def start
    @should_run = true
    @thread.wakeup
  end

  def pause
    @should_run = false
  end

  def stop
    @thread.kill
  end

  private

  def create_thread(time, msg)
    condition = ->{ @should_run }

    every(time, condition) { print "#{msg}: #{Time.now}\r\n" }
  end
end