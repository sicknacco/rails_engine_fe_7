class MerchantsController < ApplicationController
  def index
    @merch_facade = MerchantFacade.new.merchants
  end

  def show
    merchant = params[:id]

    conn = Faraday.new(url: "http://localhost:3000")

    response = conn.get("/api/v1/merchants/#{merchant}")

    json = JSON.parse(response.body, symbolize_names: true)
    @merchant = json[:data]


    items_response = conn.get("/api/v1/merchants/#{merchant}/items")

    item_json = JSON.parse(items_response.body, symbolize_names: true)
    @items = item_json[:data]
  end
end