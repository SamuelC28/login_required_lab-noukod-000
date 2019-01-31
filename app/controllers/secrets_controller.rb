class SessionsController < ApplicationController

  def new
  end

  def home
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/home'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/new'
  end

end
