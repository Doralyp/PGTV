get '/users/:id/calendar' do
user_id = session[:user_id]
shows = User.find(user_id).shows.order(:air_time).group_by(&:air_time)
erb :'/users/calendar', locals: {shows: shows}
end

get "/users/:id" do
  if session[:user_id] == params[:id].to_i

    user = User.find(params[:id])
    return [500,"No user by that ID found"] unless user

    shows_by_genre = user.shows.group_by(&:genre_id)
    genres = shows_by_genre.each { |k,v| shows_by_genre[k] = v.count}
    fav_genre = Genre.find(genres.max_by{|k,v| v}[0])

    shows_by_channel = user.shows.group_by(&:channel_id)
    channels = shows_by_channel.each { |k,v| shows_by_channel[k] = v.count}
    fav_channel = Channel.find(channels.max_by{|k,v| v}[0])

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


