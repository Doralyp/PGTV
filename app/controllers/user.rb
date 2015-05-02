get "/users/:id" do
  genre = Genre.all
  channel = Channel.all
  shows = Show.all
  if session[:user_id] == params[:id].to_i
    user = User.find(params[:id])
    return [500,"No user by that ID found"] unless user
    erb :"users/user", locals:{user: user, genre: genre, channel: channel, shows: shows }
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
