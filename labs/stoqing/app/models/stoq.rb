# == Schema Information
#
# Table name: stoqs
#
#  id         :integer          not null, primary key
#  symbol     :string(255)
#  quote      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stoq < ActiveRecord::Base
  attr_accessible :symbol, :quote
end