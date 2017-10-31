require 'pry'
require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

  get '/new' do
    erb :new
  end

  post '/pirates' do
    #binding.pry
    @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])
    @ships =[]

    params[:pirate][:ships].each do |x|
      @ships << Ship.new(x[:name], x[:type], x[:booty])

    end
    erb :show
  end

end
end
