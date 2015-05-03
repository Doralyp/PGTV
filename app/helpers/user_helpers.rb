def display_in_calendar(array, day)
  array.find {|show| show.air_day == day}.title if array.find {|show| show.air_day == day}
end

def favorite(category, user)
  shows_by_category = user.shows.group_by(&(category.downcase + "_id").to_sym)
  category_count = shows_by_category.each { |k,v| shows_by_category[k] = v.count}
  Object.const_get(category).find(category_count.max_by{|k,v| v}[0])
end
