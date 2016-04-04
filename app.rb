require 'sinatra/base'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end  

  post '/names' do
   player_1 = Player.new(params[:player_1_name])
   puts player_1
   player_2 = Player.new(params[:player_2_name])
   puts player_2
   $game = Game.new(player_1, player_2)
   puts $game
    redirect '/play'
  end

  get '/play' do 
  @game = $game
    erb :play
  end

  get '/attack' do
  @game = $game
  @game.attack(@game.player_2)
  erb :attack
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
