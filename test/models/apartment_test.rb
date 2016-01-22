# == Schema Information
#
# Table name: apartments
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  listing_url    :string
#  bedroom        :integer
#  sqr_ft         :integer
#  water_pressure :string
#  notes          :text
#  price          :integer
#  realtor_fee    :integer
#  rank           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bathroom       :integer
#

require 'test_helper'

class ApartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
