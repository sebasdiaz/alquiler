# == Schema Information
# Schema version: 20110629194753
#
# Table name: accounts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  code       :string(255)
#  dh         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
