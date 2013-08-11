class WelcomeController < ApplicationController
  
  before_filter do
    @beats = {rock: :scissors, paper: :rock, scissors: :paper}
    @options = @beats.keys
  end 
  
  def index
  end
  
  def throw
    @enemy_choice = @options.sample
    @user_choice = params[:user_choice].to_sym
    
    @result = 'anything'
    if @enemy_choice == @user_choice
      @result = 'Tie' 
    elsif @beats[@user_choice] == @enemy_choice
      @result = "Win"
    else
      @result = "Lose"
    end
    render action: "index"
  end
end
