# require 'rails_helper'

# RSpec.describe MerchantFacade do
#   describe '#merchants' do
#     it 'returns an array of merchants' do
#       merchant_facade = MerchantFacade.new
#       merchants = merchant_facade.merchants

#       expect(merchants).to be_an(Array)
#       expect(merchants).not_to be_empty
#       expect(merchants.first).to be_a(Merchant)
#       expect(merchants.first.name).to be_a(String)
#     end
#   end

#   describe '#one_merchant' do
#     it 'returns a single merchant by ID' do
#       merchant_id = 123
#       merchant_facade = MerchantFacade.new
#       merchant = merchant_facade.one_merchant(merchant_id)

#       expect(merchant).to be_a(Merchant)
#       expect(merchant.name).to be_a(String)
#     end
#   end

#   describe '#merchant_items' do
#     it 'returns an array of items associated with a specific merchant' do
#       merchant_id = 123
#       merchant_facade = MerchantFacade.new
#       items = merchant_facade.merchant_items(merchant_id)

#       expect(items).to be_an(Array)
#       expect(items).not_to be_empty
#       expect(items.first).to be_a(Item)
#       expect(items.first.name).to be_a(String)
#     end
#   end
# end