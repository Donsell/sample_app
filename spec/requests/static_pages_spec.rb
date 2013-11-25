require 'spec_helper'

describe "Static Pages" do
	let(:title) {"Ruby on Rails Tutorial Sample App | "}
  describe "Home Page" do
    it "should have the title 'Sample App | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title title + "Home"
    end
  end

  describe "Help page" do
  	it "should have the content 'Sample App | Help'" do
  		visit '/static_pages/help'
      expect(page).to have_title title + "Help"
 	end
  end

  describe "About Us" do
  	it "should have the content 'Sample App | About Us'" do
  		visit '/static_pages/about'
      expect(page).to have_title title + "About Us"
  	end
  end

  describe "Contact" do
  	it "should have the content 'Sample App | Contact Us" do
  		visit '/static_pages/contact'
  		expect(page).to have_title title + "Contact"
	end
  	
  end
end
