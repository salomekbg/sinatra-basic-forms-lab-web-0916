require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/display_puppy' do
    new_dog = Puppy.new(params[:name], params[:breed], params[:age])
    @name = new_dog.name
    @breed = new_dog.breed
    @age = new_dog.age
    erb :display_puppy
  end
end
