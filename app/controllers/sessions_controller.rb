class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name].blank?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to sessions_show_path
    end
  end

  def destroy
  end

  def show
  end
end
