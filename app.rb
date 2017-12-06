
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @first_player_name = params["player_1"]
    @second_player_name = params["player_2"]
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
