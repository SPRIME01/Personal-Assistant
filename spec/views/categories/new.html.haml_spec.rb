require 'spec_helper'

describe "categories/new.html.haml" do
  before(:each) do
    assign(:category, stub_model(Category,
      :name => "MyString",
      :description => "MyText",
      :list_id => 1
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => categories_path, :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
      assert_select "textarea#category_description", :name => "category[description]"
      assert_select "input#category_list_id", :name => "category[list_id]"
    end
  end
end
