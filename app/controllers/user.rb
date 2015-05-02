get "/users/:id" do
  if session[:user_id] == params[:id].to_i
    user = User.find(params[:id])
    return [500,"No user by that ID found"] unless user
    erb :"users/user", locals:{user: user}
  else
    redirect '/'
  end
end


