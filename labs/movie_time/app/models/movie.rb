# == Schema Information
#
# Table name: movies
#
#  id      :integer          not null, primary key
#  title   :string(255)
#  year    :integer
#  rating  :string(255)
#  runtime :decimal(, )
#

class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :genres
end
