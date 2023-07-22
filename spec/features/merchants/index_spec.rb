require 'rails_helper'

RSpec.describe "Merchant Index Page", type: :feature do
  describe "When I visit the merchant index page" do
    it "lists all merchants as links" do
      visit merchants_path

      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_link("Willms and Sons")
    end
  end
end