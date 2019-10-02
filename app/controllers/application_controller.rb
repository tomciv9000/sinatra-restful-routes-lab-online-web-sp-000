class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    erb :index
  end
  
  get '/recipes/new' do
    erb :new
  end
  
  post '/recipes' do
    recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cooktime: params[:cooktime])
    
    redirect to "/articles/#{article.id}"
  end
  
  get '/recipes' do
    @articles = Article.all
    erb :index
  end
  
  get '/recipes/:id' do
    @article = Article.find(params[:id])
    erb :show
  end
  
  get '/recipes/:id/edit' do
    @article = Article.find_by_id(params[:id])
    erb :edit
  end
 
  patch '/recipes/:id' do 
    @article = Article.find_by_id(params[:id])
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save
    redirect to "/recipes/#{@article.id}"
  end
  
  delete '/recipes/:id' do
    @article = Article.find_by_id(params[:id])
    @article.delete
    redirect to '/recipes'
  end
  
  

end
