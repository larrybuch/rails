class QueController < ApplicationController
  def index
    session[:que] = Que.new
  end

  def enqueue
    session[:que].enqueue(params[:color])
    render :json => session[:que]
  end

  def dequeue
    session[:que].dequeue
    render :json => session[:que]
  end
end