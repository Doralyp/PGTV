get '/channels/index' do
  channels = Channel.all
  erb :'channels/index', locals: {channels: channels}
end

get '/channels/:id' do
  channel = Channel.find(params[:id])
  shows = Show.where(channel_id: params[:id])
  erb :'channels/channel', locals: {channel: channel, shows: shows}
end
