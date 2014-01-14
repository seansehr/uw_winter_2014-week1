require "#{File.dirname(__FILE__)}/../spec_helper"

describe "My search page" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "Sean Sehr"
    click_on "Google Search"
    page.text.must_include "www.linkedin.com/pub/sean-sehr"
    page.text.must_include "https://www.facebook.com/sean.sehr"
  end
end
