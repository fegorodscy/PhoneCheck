module Gorodscy::Phone
  def valid_phone_number?(str)
    (str =~ /(?:(?:\+\d{1,3}\s)?(?:\(\d{3}\)\s?|\d{3}-)\d{3}-\d{4}|\+?\d{10,11})/) == 0
  end
end