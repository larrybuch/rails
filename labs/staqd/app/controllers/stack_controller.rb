class StackController < ApplicationController
  def index
    session[:stack] = Stack.new
    #@stacks = Stack.all
  end

  def create
    if params[:commit] == "push"
      session[:stack].push(params[:color])
    end

    if params[:commit] == "pop"
      session[:stack].pop
    end

    @colors = session[:stack]

  end
end