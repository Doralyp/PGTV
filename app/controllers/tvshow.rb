get "/shows" do
  shows = Show.all
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

put '/show/:id' do
  show = Show.find(params[:id])
  rating = params[:star]
  rate = rating.keys.join
  show.ratings << Rating.create(rating_value: rate.to_i, show_id: params[:id])
  ratings = []
  show.ratings.each do |value|
    ratings << value.rating_value
  end
  new_rating = ratings.inject(:+)
  redirect "/shows/#{show.id}"
end
