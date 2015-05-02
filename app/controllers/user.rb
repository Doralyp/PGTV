get "/users/:id" do
  if session[:user_id] == params[:id].to_i
    user = User.find(params[:id])
    return [500,"No user by that ID found"] unless user
    erb :"users/user", locals:{user: user}
  else
    redirect '/'
  end
end


# get "/users/:id" do
#   user = User.find(params[:id])
#   favgenre = Genre.where()
#   erb :"users/user", locals:{user: user}
# end


put '/users/:id' do
 user_id = session[:user_id]
 showid = params[:show].keys
 show = Show.find(showid)
 user = User.find(user_id)
 user.shows << show
 'THIS IS WORKING'
end
