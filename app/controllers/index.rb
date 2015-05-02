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
  return [500, "Something went wrong. Try registering again." ] unless user.save
  redirect "users/#{user.id}"
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    redirect "/users/#{ user.id }"
  else
    redirect "/"
  end
end
