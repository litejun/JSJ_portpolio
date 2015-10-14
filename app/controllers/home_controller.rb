class HomeController < ApplicationController
    @n = 1
  def index
    unless current_user.nil?
      @day = Date.new(current_user.created_at.year,current_user.created_at.month,current_user.created_at.day)
      @n = Date.today
      @today = (@n - @day).to_i
    end
  end
  
  def detail
  end
  
  def test
    
  end
end
