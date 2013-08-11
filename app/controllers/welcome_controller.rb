class WelcomeController < ApplicationController
  def index
  end
  
  def throw
    flash[:notice] = 'Submitted'
    render :action => "index"
  end
end
