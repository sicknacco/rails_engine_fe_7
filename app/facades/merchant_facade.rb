class MerchantFacade
  def merchants
    service = MerchantService.new
    json = service.all_merchants
    @merchants = json[:data].map do |merch_data|
      Merchant.new(merch_data)
    end
  end

  def one_merchant(id)
    service = MerchantService.new
    json = service.merchant(id)
    @merchant = Merchant.new(json[:data])
  end
  
  def merchant_items(merch_id)
    service = MerchantService.new
    json = service.items(merch_id)
    @items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end