get "/users/:id" do
  user = User.find(params[:id])
  erb :"users/user", locals:{user: user}
end

