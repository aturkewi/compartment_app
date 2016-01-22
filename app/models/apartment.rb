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

class Apartment < ActiveRecord::Base
    has_one :address
    belongs_to :user

    validates_numericality_of :bedroom, :bathroom, :sqr_ft, :price, :realtor_fee, greater_than_or_equal_to: 0, allow_nil: true



end
