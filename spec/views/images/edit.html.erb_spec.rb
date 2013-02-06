require 'spec_helper'

describe "images/edit" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :description => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path(@image), :method => "post" do
      assert_select "input#image_description", :name => "image[description]"
      assert_select "input#image_category", :name => "image[category]"
    end
  end
end
