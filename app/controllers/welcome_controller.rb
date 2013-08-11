class WelcomeController < ApplicationController
  def index
  end
  
  Beats = {Rock: :Scissors, Scissors: :Paper, Paper: :Rock}
  Options = Beats.keys
  
  def throw
    render action: "index"
    enemy_choice = Options.sample
    user_choice = params[:user_choice].to_sym
    
    if enemy_choice == user_choice
      flash[:notice] = 'You tied! Play again!' 
    elsif Beats[user_choice] == enemy_choice
      flash[:notice] = "#{user_choice} beats #{enemy_choice}. You win! Play again!"
    else
      flash[:notice] = "#{enemy_choice} beats #{user_choice}. You lose! Play again!"
    end
  end
end
