require 'rails_helper'

describe MerchantService do
  describe 'class methods' do
    describe '#all_merchants' do
      it 'returns all merchants' do
        merchant = MerchantService.new.all_merchants
        expect(merchant).to be_a Hash
        expect(merchant[:data]).to be_an Array
        merch_data = merchant[:data].first
        expect(merch_data[:attributes]).to have_key :name
        expect(merch_data[:attributes][:name]).to be_a String
      end
    end
  end
end