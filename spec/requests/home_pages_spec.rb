require 'spec_helper'

describe "Home Page" do
  describe "GET /" do
    it "should have the content 'Welcome'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/'
      expect(page).to have_content('Welcome')
    end
  end
end
