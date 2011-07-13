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

require 'test_helper'

class CtacteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
