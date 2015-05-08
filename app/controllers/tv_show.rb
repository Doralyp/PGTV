
get "/shows" do
  shows = Show.sort_shows
  erb :"/tvshows/index", locals:{shows: shows}
end

get "/shows/search" do
  shows = Show.find_show(params[:query])
  erb :"/tvshows/index", locals: {shows: shows}
end


put '/shows/new' do
  show = Show.find(params[:show].keys).first
  show.comments.build(comment: params[:comment])

  
  return[500, "Couldn't save this comment"] unless comment.save
  redirect "/shows/#{show.id}"
end


get "/shows/:id" do
  user_id = session[:user_id]
  show = Show.find(params[:id])
  user = User.find(user_id) if user_id
  erb :"/tvshows/tvshow", locals:{show: show, user_id: user_id, user: user}
end

put '/show/:id/rating' do
  show = Show.find(params[:id])
  #ZM: This logic should be within the Model.... Given a value calculate the rating.
  #ZM: This can also be turned into a build
  rating = Rating.new(rating_value: (6 - params[:star].first.first.to_i))
  show.rating.build(rating: rating)
  redirect "/shows/#{show.id}"
end




