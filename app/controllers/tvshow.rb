#ZM: this file should be named tv_shows.rb

#ZM: Do not leave require pry in your final models. Can lead to issues.
require 'pry'

get "/shows" do
  #ZM: this should be a class method on the Show model. 
  shows = Show.all.sort{ |show_a, show_b| show_b.rating_average <=> show_a.rating_average }
  erb :"/tvshows/index", locals:{shows: shows}
end

get "/shows/search" do
  shows = Show.where("lower(title) LIKE ?", "%#{params[:query].downcase}%")
  erb :"/tvshows/index", locals: {shows: shows}
end


put '/shows/new' do
  show = Show.find(params[:show].keys).first
  comment = Comment.create(comment: params[:comment])
  show.comments << comment
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
  rating = Rating.new(rating_value: (6 - params[:star].first.first.to_i))
  show.ratings << rating
  redirect "/shows/#{show.id}"
end
