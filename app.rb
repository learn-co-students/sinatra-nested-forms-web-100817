require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, Proc.new { File.join('views', 'pirates') }

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"]) #working
      @ships = params["pirate"]["ships"].map {|ship| Ship.new(ship)}
      # binding.pry
      erb :show
    end

  end
end
