module Gorodscy; end

require 'curses'
require 'io/console'
require_relative 'lib/time'
require_relative 'lib/timed_loop'
require_relative 'lib/phone'
require_relative 'lib/watch'

include Gorodscy::TimedLoop
include Gorodscy::Phone

watch = Watch.new(time: 1.second)

def ask_phone_number
  print "Please enter a valid phone number: "
  phone = Curses.getstr

  conditional_not = valid_phone_number?(phone) ? '' : 'not '

  print "#{phone} is #{conditional_not}a valid phone number\r\n"
end

t = Thread.new do
  loop do
    case Curses.getch
    when 10, 13 # Key Enter/Return
      watch.pause

      ask_phone_number

      watch.start
    when "q"
      watch.stop

      break
    end
  end
end

t.join
