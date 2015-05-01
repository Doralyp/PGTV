get '/' do
  erb :index
end

get '/login' do
  erb :"users/login"
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    redirect "users/#{user.id}"
  else
    redirect "/"
  end
end

get '/signup' do

end

