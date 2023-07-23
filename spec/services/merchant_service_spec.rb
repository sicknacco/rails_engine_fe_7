require 'rails_helper'

describe MerchantService do
  describe 'class methods' do
    describe '#all_merchants' do
      it 'returns all merchants' do
        merchants = MerchantService.new.all_merchants
        expect(merchants).to be_a Hash
        expect(merchants[:data]).to be_an Array
        merch_data = merchants[:data].first
        expect(merch_data[:attributes]).to have_key :name
        expect(merch_data[:attributes][:name]).to be_a String
      end
    end
  end

  describe 'instance methods' do
    describe '.merchant' do
      it "returns a single merchant" do
        merchant = MerchantService.new.merchant(1)
        expect(merchant).to be_a Hash
        expect(merchant).to have_key :data
        expect(merchant[:data]).to be_a Hash
        merch_data = merchant[:data]
        expect(merch_data[:attributes]).to have_key :name
        expect(merch_data[:attributes][:name]).to be_a String
      end
    end

    describe '.items' do
      it "returns all items associated with a specific merchant" do
        merch_items = MerchantService.new.items(1)
        expect(merch_items).to be_a Hash
        expect(merch_items[:data]).to be_an Array
        item_data = merch_items[:data].first
        expect(item_data[:attributes]).to have_key :name
        expect(item_data[:attributes][:name]).to be_a String
      end
    end
  end
end