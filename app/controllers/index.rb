get '/' do
  erb :index
end

get '/login' do
  erb :"users/login"
end

get '/signup' do
  erb :"/users/signup"
end

post '/signup' do
  user = User.new
  user.name = params[:name]
  user.email = params[:email]
  user.password = params[:password]
  if user.save
    session[:user_id] = user.id
    redirect "users/#{user.id}"
  else
    redirect back
  end
end

post '/login' do
  user = User.find_by(email: params[:email])
  return [500, "No user with that email"] unless user
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{ user.id }"
  else
    redirect back
  end
end

post '/logout' do
  session[:user_id] = nil
  redirect '/'
end
