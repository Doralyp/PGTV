get "/shows" do
  shows = Show.all
  erb :"/tvshows/index", locals:{shows: shows}
end

get "/shows/:id" do
  show = Show.find(params[:id])
  erb :"/tvshows/tvshow", locals:{show: show}
end


