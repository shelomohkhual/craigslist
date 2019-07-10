class PostsController < ApplicationController
    # Renders the view page in app/views/sessions/login.erb
  get '/sessions/login' do
    erb :'sessions/login'
   end

get '/posts/create_post' do
    @user = User.find(session[:user_id])
    erb :'/posts/create_post'
  end

  get '/posts/my_posts' do
    @user = User.find(session[:user_id])
    erb :'/posts/my_posts'
  end
end