class MerchantService
  def all_merchants
    conn = Faraday.new(url: "http://localhost:3000")

    response = conn.get("/api/v1/merchants")

    json = JSON.parse(response.body, symbolize_names: true)
  end
end