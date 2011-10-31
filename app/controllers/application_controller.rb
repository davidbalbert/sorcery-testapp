class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def not_authenticated
    flash[:error] = "You need to be logged in to see the super secret page"
    redirect_to(root_url)
  end
  
end
