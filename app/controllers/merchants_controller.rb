class MerchantsController < ApplicationController
  def index
    conn = Faraday.new(url: "http://localhost:3000")

    response = conn.get("/api/v1/merchants")

    json = JSON.parse(response.body, symbolize_names: true)
    @merchants = json[:data].map do |merch_data|
      Merchant.new(merch_data)
    end
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