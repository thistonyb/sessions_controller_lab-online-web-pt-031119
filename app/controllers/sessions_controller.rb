class SessionsController < ApplicationController

  def new

  end

  def create
    redirect_to action: 'new' if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
