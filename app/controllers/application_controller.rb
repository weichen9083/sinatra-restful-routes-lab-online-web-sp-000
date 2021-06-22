class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
   get '/' do
    # redirect to homepage/index
    redirect to '/recipes'
  end

  get '/recipes' do # index action allowing view to access all recipes thru instance variable @recipes
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/new' do # loads form to create new recipe
    erb :new
  end

end
