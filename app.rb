
require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = params["player_1"]
    session[:name2] = params["player_2"]
    redirect '/play'
  end

  get '/play' do
    @first_player_name = session[:name1]
    @second_player_name = session[:name2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
