require ('sinatra')
require ('sinatra/contrib/all')


also_reload ('./models/*')

get '/all/:title' do
  return Film.add(params[:title])
end
