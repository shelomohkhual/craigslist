class ApplicationController < Sinatra::Base

    register Sinatra::ActiveRecordExtension
  
    configure do
        set :views, "app/views"
      set :public_dir, "public"
      #enables sessions as per Sinatra's docs. Session_secret is meant to encript the session id so that users cannot create a fake session_id to hack into your site without logging in. 
      enable :sessions
      set :session_secret, "secret"
    end
    
    # Renders the view page in app/views/sessions/login.erb
  get '/sessions/login' do
    erb :'sessions/login'
   end
 
   # Handles the POST request when user submites the Log In form. Similar to above, but without the new user creation.
   post '/sessions' do
     user = User.find_by(email: params["email"])
     if user.password == params["password"]
       session[:user_id] = user.id
       redirect '/users/home'
     else 
       redirect '/sessions/login'
     end
   end
 
   # Logs the user out by clearing the sessions hash. 
   get '/sessions/logout' do
     session.clear
     redirect '/'
   end
 
   # Renders the user's individual home/account page. 
   get '/users/home' do
     @user = User.find(session[:user_id])
     erb :'/users/home'
   end
    
    
  
  end
  