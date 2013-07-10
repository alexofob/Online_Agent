require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Efiewura'" do
      visit "/static_pages/home"
      page.should have_selector('h1',
                              text: 'Efiewura')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                text: "Efiewura | Home")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1',
                              text: 'About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                text: "Efiewura | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'"    do
      visit "/static_pages/contact"
      page.should have_selector('h1',
                              text: 'Contact Us')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                                text: "Efiewura | Contact Us")
    end
  end
end
