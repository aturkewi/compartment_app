require_relative '../rails_helper'

RSpec.describe Apartment, type: :model do

  context 'test apartment validations' do

    before (:each) do
      @apartment = Apartment.new.tap do |a|
        a.listing_url = 'www.listings.com/1234'
        a.bedroom = 2
        a.sqr_ft = 500
        a.water_pressure = 'good'
        a.notes = 'i did not like this apartment at all'
        a.price = 2000
        a.realtor_fee = 4000
        a.rank = 2
        a.bathroom = 1
      end
    end

    describe 'apartment#bedroom' do
      it 'is valid without bedrooms' do
        @apartment.bedroom = nil
        expect(@apartment.save).to eq(true)
      end

      it 'is valid with a posative number of apartments' do
        expect(@apartment.save).to eq(true)
      end

      it 'is not valid with a negative number of bedrooms' do
        @apartment.bedroom = -3
        expect(@apartment.save).to eq(false)
      end
    end

    describe 'apartment#sqr_ft' do
      it 'is valid without bedrooms' do
        @apartment.sqr_ft = nil
        expect(@apartment.save).to eq(true)
      end

      it 'is valid with a posative number of apartments' do
        expect(@apartment.save).to eq(true)
      end

      it 'is not valid with a negative number of square feet' do
        @apartment.sqr_ft = -300
        expect(@apartment.save).to eq(false)
      end
    end

    describe 'apartment#price' do
      it 'is valid without bedrooms' do
        @apartment.price = nil
        expect(@apartment.save).to eq(true)
      end

      it 'is valid with a posative number of apartments' do
        expect(@apartment.save).to eq(true)
      end

      it 'is not valid with a negative number of price' do
        @apartment.price = -300
        expect(@apartment.save).to eq(false)
      end
    end

    describe 'apartment#realtor_fee' do
      it 'is valid without bedrooms' do
        @apartment.realtor_fee = nil
        expect(@apartment.save).to eq(true)
      end

      it 'is valid with a posative number of apartments' do
        expect(@apartment.save).to eq(true)
      end

      it 'is not valid with a negative number of realtor fee' do
        @apartment.realtor_fee = -300
        expect(@apartment.save).to eq(false)
      end
    end

    describe 'apartment#bathroom' do
      it 'is valid without bedrooms' do
        @apartment.bathroom = nil
        expect(@apartment.save).to eq(true)
      end

      it 'is valid with a posative number of apartments' do
        expect(@apartment.save).to eq(true)
      end

      it 'is not valid with a negative number of bathroom' do
        @apartment.bathroom = -300
        expect(@apartment.save).to eq(false)
      end
    end

  end
end
