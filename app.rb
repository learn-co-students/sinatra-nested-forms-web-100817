require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      # binding.pry
      @shippy_ships = []
      params[:pirate][:ships].each do |shippy|
      # binding.pry
        @shippy_ships << Ship.new(shippy)
      end
      @pirate = Pirate.new(params)
      erb :show
    end

  end
end
