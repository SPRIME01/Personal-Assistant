require 'spec_helper'

describe "colors/index.html.haml" do
  before(:each) do
    assign(:colors, [
      stub_model(Color,
        :name => "Name",
        :hex => "Hex"
      ),
      stub_model(Color,
        :name => "Name",
        :hex => "Hex"
      )
    ])
  end

  it "renders a list of colors" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hex".to_s, :count => 2
  end
end
