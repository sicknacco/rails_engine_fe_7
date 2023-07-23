class MerchantsController < ApplicationController
  def index
    @merch_facade = MerchantFacade.new.merchants
  end

  def show
    @merchant = MerchantFacade.new.one_merchant(params[:id])
    @items = MerchantFacade.new.merchant_items(params[:id])
  end
end