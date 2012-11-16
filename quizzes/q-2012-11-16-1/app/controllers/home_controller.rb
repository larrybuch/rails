class HomeController < ApplicationController
  def start
    
  end
  def output
    @number = params[:number].to_i
  end
  
end