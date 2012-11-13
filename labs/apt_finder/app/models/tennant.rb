# == Schema Information
#
# Table name: tennants
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  age          :integer
#  gender       :string(255)
#  apartment_id :integer
#

class Tennant < ActiveRecord::Base
  belongs_to :apartment
  has_many :pets
end
