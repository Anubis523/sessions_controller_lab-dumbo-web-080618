class SessionsController < ApplicationController

  # get '/login' => 'sessions#new'  
  def new
  end

  # post '/login' => 'sessions#create'
  def create
    if params[:name] == '' || params[:name].nil?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end
  
  # post '/logout' => 'sessions#destroy'
  def destroy
    session.delete  :name
    redirect_to login_path
  end
end
