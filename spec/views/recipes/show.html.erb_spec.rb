require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :cook_time => 1,
      :prep_time => 2,
      :name => "Name",
      :description => "MyText",
      :steps => "MyText",
      :rating => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
  end
end
