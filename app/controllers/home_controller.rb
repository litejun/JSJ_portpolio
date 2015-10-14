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
  
  def save
    
    @a = params[:skill]
    
    case @a
    
    when "1"
      data = Development.new
    when "2"
      data = Information.new
    when "3"
      data = Insight.new
    when "4"
      data = Momentum.new
    when "5"
      data = Leadership.new
    when "6"
      data = Collaboration.new
    when "7"
      data = Logistics.new
    end
    
    
    data.title = params[:title]
    data.date = params[:date]
    data.score = params[:score]
    data.review = params[:review]
    
    data.save
    
    redirect_to :back
    
  end
  
  
end
