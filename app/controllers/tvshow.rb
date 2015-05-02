get "/shows" do
  shows = Show.all
  erb :"/tvshows/index", locals:{shows: shows}
end

get "/shows/:id" do
  user_id = session[:user_id]
  show = Show.find(params[:id])
  erb :"/tvshows/tvshow", locals:{show: show, user_id: user_id}
end


