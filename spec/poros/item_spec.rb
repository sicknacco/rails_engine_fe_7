require 'rails_helper'

RSpec.describe Item do
  it 'exists' do
    attrs = {
      attributes: {
        name: "Fancy Widget"
      }
    }

    item = Item.new(attrs)

    expect(item).to be_a Item
    expect(item.name).to eq("Fancy Widget")
  end
end