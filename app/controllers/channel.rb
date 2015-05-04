get '/channels/index' do
  channels = Channel.all
  erb :'channels/index', locals: {channels: channels}
end

get '/channels/:id' do |id|
  #ZM: Use find_by unless you want an expection
  #AF: Use .includes(:show), and remove line 10... send line 11 shows: channel.show
  channel = Channel.find(id)
  shows = channel.shows
  erb :'channels/channel', locals: {channel: channel, shows: shows}
end
