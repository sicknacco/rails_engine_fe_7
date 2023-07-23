require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    attrs = {
      attributes: {
        name: "Jim Bob's"
      }
    }

    merchant = Merchant.new(attrs)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq("Jim Bob's")
  end
end