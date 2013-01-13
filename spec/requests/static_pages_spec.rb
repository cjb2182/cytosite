require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Cytosite'" do
      visit '/static_pages/home'
      page.should have_content('Cytosite')
    end
  end
end
