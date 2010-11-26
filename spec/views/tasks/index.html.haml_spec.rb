require 'spec_helper'

describe "tasks/index.html.haml" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :name => "Name",
        :description => "MyText",
        :list_id => 1,
        :group_id => 1,
        :user_id => 1,
        :category_id => 1,
        :repeatable => false
      ),
      stub_model(Task,
        :name => "Name",
        :description => "MyText",
        :list_id => 1,
        :group_id => 1,
        :user_id => 1,
        :category_id => 1,
        :repeatable => false
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
