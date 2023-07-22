require 'rails_helper'

RSpec.describe "Merchant's Show Page", type: :feature do
  describe "When visiting a Merchant's show page" do
    it "has a list of all items for that merchant" do
      visit merchant_path(1)

      within '#items' do
        expect(page).to have_content("Item Provident At")
        expect(page).to have_content("Item Et Cumque")
        expect(page).to have_content("Item Ea Voluptatum")
        expect(page).to_not have_content("Item Sit Esse")
        expect(page).to_not have_content("Item Fuga Est",)
      end
    end
  end
end