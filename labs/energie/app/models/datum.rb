# == Schema Information
#
# Table name: data
#
#  id            :integer          not null, primary key
#  zip           :integer
#  lat           :float
#  lon           :float
#  building_type :string(255)
#  kwh           :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Datum < ActiveRecord::Base
end
