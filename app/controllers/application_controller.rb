class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/recipes" do
    erb :index
  end
  
  get "/recipes/new" do
    erb :index
  end
  
  post "/recipes" do
    erb :index
  end
  
  get "/recipes/:id" do
    erb :index
  end
  
  

end
