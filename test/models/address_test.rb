# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  street       :string
#  number       :integer
#  apartment    :string
#  state        :string
#  city         :string
#  zip          :integer
#  floor        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
