require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    # code other routes/actions here
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end


# post '/student' do
#   @student = Student.new(params[:student])
 
#   params[:student][:courses].each do |details|
#     Course.new(details)
#   end
 
#   @courses = Course.all
 
#   erb :student
# end