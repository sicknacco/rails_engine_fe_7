class MerchantFacade
  def merchants
    service = MerchantService.new

    json = service.all_merchants

    @merchants = json[:data].map do |merch_data|
      Merchant.new(merch_data)
    end
  end
end