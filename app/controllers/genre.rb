#ZM: No need for the word /index
get '/genres' do
  genres = Genre.all
  erb :'genres/index', locals: {genres: genres}
end

get '/genres/:id' do
  genre = Genre.find(params[:id])
  shows = Show.where(genre_id: params[:id])
  erb :'genres/genre', locals: {genre: genre, shows: shows}
end
