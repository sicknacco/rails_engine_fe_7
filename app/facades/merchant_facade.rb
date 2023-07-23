class MerchantFacade
  def merchants
    conn = Faraday.new(url: "http://localhost:3000")

    response = conn.get("/api/v1/merchants")

    json = JSON.parse(response.body, symbolize_names: true)
    @merchants = json[:data].map do |merch_data|
      Merchant.new(merch_data)
    end
  end
end