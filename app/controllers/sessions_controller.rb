class SessionsController < ApplicationController

  def create
    user = login(params[:username], params[:password])
    if user
      redirect_back_or_to root_url
    else
      flash.now[:error] = "Invalid login"
      render :new
    end
	
  end

  def destroy
    logout #sorcery method
    redirect_to(root_url)
  end
end
