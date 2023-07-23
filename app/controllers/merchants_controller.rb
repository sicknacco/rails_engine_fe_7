class MerchantsController < ApplicationController
  def index
    @merch_facade = MerchantFacade.new.merchants
  end

  def show
    @merchant = MerchantFacade.new.one_merchant(params[:id])
    @items = MerchantFacade.new.merchant_items(params[:id])

    # items_response = conn.get("/api/v1/merchants/#{merchant}/items")

    # item_json = JSON.parse(items_response.body, symbolize_names: true)
    # @items = item_json[:data]
  end
end