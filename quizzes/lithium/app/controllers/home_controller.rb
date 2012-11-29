class HomeController < ApplicationController
  def index
  end

  def show_name
    @name = params[:name]
    @count = @name.length

  end
end