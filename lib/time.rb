module Gorodscy::Time
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  alias_method :second, :seconds
  alias_method :minute, :minutes
  alias_method :hour, :hours
end

class Numeric
  include Gorodscy::Time
end