class RaffleController < ApplicationController
  def index
  end

  def reset_winner
    Entry.update_all(winner: false)
    redirect_to raffle_index_path
  end
end
