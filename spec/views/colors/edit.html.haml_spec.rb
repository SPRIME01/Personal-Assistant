require 'spec_helper'

describe "colors/edit.html.haml" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :new_record? => false,
      :name => "MyString",
      :hex => "MyString"
    ))
  end

  it "renders the edit color form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => color_path(@color), :method => "post" do
      assert_select "input#color_name", :name => "color[name]"
      assert_select "input#color_hex", :name => "color[hex]"
    end
  end
end
