require 'rails_helper'

RSpec.describe "Merchant Index Page", type: :feature do
  describe "When I visit the merchant index page" do
    it "lists all merchants as links" do
      visit merchants_path

      within "#merchants" do
        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Klein, Rempel and Jones")
        expect(page).to have_link("Willms and Sons")
        expect(page).to have_link("Wisozk, Hoeger and Bosco")
      end
    end

    it "each merchant name links to their show page" do
      visit merchants_path
      
      within "#merchants" do
        click_link("Schroeder-Jerde")
      end
      
      merchant = Merchant.first
      expect(current_path).to eq(merchant_path(merchant))
      expect(page).to have_content(merchant.name)
      expect(page).to_not have_content("Schroeder-Jerde")
    end
  end
end