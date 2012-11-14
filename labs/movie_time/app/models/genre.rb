# == Schema Information
#
# Table name: genres
#
#  id    :integer          not null, primary key
#  genre :string(255)
#

class Genre < ActiveRecord::Base
  has_and_belongs_to_many :movies
end
