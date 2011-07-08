class Shopping < ActiveRecord::Base
  has_many :locals

  def to_s
	  name
  end
end

# == Schema Information
# Schema version: 20110629020840
#
# Table name: shoppings
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

