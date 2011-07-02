class Local < ActiveRecord::Base
  belongs_to :shopping  
	def to_s
		  name
	end
end

# == Schema Information
# Schema version: 20110629030226
#
# Table name: locals
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  code        :string(255)
#  union       :string(255)
#  porcent     :decimal(, )
#  expensas    :boolean
#  shopping_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

