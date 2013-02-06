require 'spec_helper'

describe "images/show" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :description => "Description",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/Category/)
  end
end
