require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @message = session[:message]
    @first_player_name = $player_1.name
    @second_player_name = $player_2.name
    @first_player_hp = $player_1.hp
    @second_player_hp = $player_2.hp
    erb(:play)
  end

  post '/attack' do
    session[:message] = "Player 2 has been attacked"
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
