def display_in_calendar(array, day)
  array.find {|show| show.air_day == day}.title if array.find {|show| show.air_day == day}
end

# #ZM: There is way to much logic in here to have it be a helper. This is confusing and hidden from the user. It should be somehwere like the User Model.
# def favorite(category, user)
#   shows_by_category = user.shows.group_by({|show| show.send(category.downcase + "_id")})
#   category_count = shows_by_category.each { |k,v| shows_by_category[k] = v.count}
#   if category_count.empty?
#     "None."
#   else
#     Object.const_get(category).find(category_count.max_by{|k,v| v}[0]).name
#   end
# end
