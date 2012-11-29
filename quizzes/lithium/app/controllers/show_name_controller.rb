class ShowNameController > ApplicationController
  def show_name
    @name = params[:name]
    @count = @name.count
    binding.pry
  end
end