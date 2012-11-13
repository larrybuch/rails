# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  species    :string(255)
#  tennant_id :integer
#

class Pet < ActiveRecord::Base
  belongs_to :tennant
end
