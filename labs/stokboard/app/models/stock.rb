# == Schema Information
#
# Table name: stocks
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  time  :string(255)
#  quote :float
#

class Stock < ActiveRecord::Base

end
