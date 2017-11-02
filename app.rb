require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/new'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @shipped = []

      params[:pirate][:ships].each do |details|
        @shipped << Ship.new(details)
      end
      @pirate = Pirate.new(params)
    erb :'pirates/show'
  end

  end
end
