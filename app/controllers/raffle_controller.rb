class RaffleController < ApplicationController
  def index
  end

  def reset_winner
    Entry.update_all(winner: false)
    redirect_to root_url 
  end
end
