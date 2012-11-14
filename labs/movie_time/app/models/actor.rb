# == Schema Information
#
# Table name: actors
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies
end
