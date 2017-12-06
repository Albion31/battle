# require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = {name: params["player_1"], hitpoints: 100}
    session[:name2] = {name: params["player_2"], hitpoints: 100}
    redirect '/play'
  end

  get '/play' do
    @first_player_name = session[:name1][:name]
    @second_player_name = session[:name2][:name]
    @first_player_hp = session[:name1][:hitpoints]
    @second_player_hp = session[:name2][:hitpoints]
    erb(:play)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
