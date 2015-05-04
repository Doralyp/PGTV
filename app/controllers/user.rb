#ZM: Fix indentation
get '/users/:id/calendar' do
user_id = session[:user_id]
shows = User.find(user_id).shows.order(:air_time).group_by(&:air_time)
erb :'/users/calendar', locals: {shows: shows}
end

get "/users/:id" do
  if session[:user_id] == params[:id].to_i

    user = User.find(params[:id])
    return [500,"No user by that ID found"] unless user

    #ZM: Favorite should not be a helper, but a method on the model.
    fav_genre = favorite("Genre", user)

    fav_channel = favorite("Channel", user)

    recommendation = Show.find(rand(1..Show.all.count))

    erb :"users/user", locals:{user: user, fav_genre: fav_genre, fav_channel: fav_channel, recommendation: recommendation}
  else
    redirect '/'
  end
end

put '/users/:id' do
 user_id = session[:user_id]
 showid = params[:show].keys
 show = Show.find(showid)
 user = User.find(user_id)
 user.shows << show
 redirect "/users/#{user_id}"
end


delete '/users/:id' do
 user_id = session[:user_id]
 showid = params[:show].keys
 show = Show.find(showid)
 user = User.find(user_id)
 user.shows.delete(show)
 redirect "/users/#{user_id}"
end


