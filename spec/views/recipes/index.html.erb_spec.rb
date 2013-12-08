require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :cook_time => 1,
        :prep_time => 2,
        :name => "Name",
        :description => "MyText",
        :steps => "MyText",
        :rating => 3
      ),
      stub_model(Recipe,
        :cook_time => 1,
        :prep_time => 2,
        :name => "Name",
        :description => "MyText",
        :steps => "MyText",
        :rating => 3
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
