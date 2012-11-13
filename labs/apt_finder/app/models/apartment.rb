# == Schema Information
#
# Table name: apartments
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  rooms :integer
#  rent  :decimal(, )
#

class Apartment < ActiveRecord::Base
  has_many :tennants
end