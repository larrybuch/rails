class NameController < ApplicationController
  def start
  end
  def create
    @name = params[:name]
    @tally = @name.length
  end
end
