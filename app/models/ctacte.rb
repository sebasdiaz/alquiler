# == Schema Information
# Schema version: 20110709155613
#
# Table name: ctactes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  amount     :decimal(, )
#  account_id :integer
#  local_id   :integer
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#

class Ctacte < ActiveRecord::Base
  belongs_to :account
  belongs_to :local
end
