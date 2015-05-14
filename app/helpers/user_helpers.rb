def display_in_calendar(array, day)
  array.find {|show| show.air_day == day}.title if array.find {|show| show.air_day == day}
end

