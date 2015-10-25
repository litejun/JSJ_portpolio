class HomeController < ApplicationController
    @n = 1
  def index
    unless current_user.nil?
      @day = Date.new(current_user.created_at.year,current_user.created_at.month,current_user.created_at.day)
      @n = Date.today
      @today = (@n - @day).to_i
    end
  end
  
  def index2
  
    click = params[:click]
    case click
    
    when "1"
      data = Development.all
     @data2 = current_user.developments 

    when "2"
      data = Information.all
      @data2 = current_user.informations
    when "3"
      data = Insight.all
      @data2 = current_user.insights
    when "4"
      data = Momentum.all
      @data2 = current_user.momenta
    when "5"
      data = Leadership.all
      @data2 = current_user.leaderships
    when "6"
      data = Collaboration.all
      @data2 = current_user.collaborations
    when "7"
      data = Logistic.all
      @data2 = current_user.logistics
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
      data = Logistic.new
    end
    
    data.user_id = params[:user_id]
    data.title = params[:title]
    data.date = params[:date]
    data.score = params[:score]
    data.review = params[:review]
    
    data.save
    
    redirect_to :back
    
  end
  
  
end
