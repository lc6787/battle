require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb :index
  end
  
  run! if app_file == $0
end