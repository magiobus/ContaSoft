class MainController < ApplicationController
  def index
  end

  def list
    @movements = Movement.order("movements.amount ASC")
  end 

end
