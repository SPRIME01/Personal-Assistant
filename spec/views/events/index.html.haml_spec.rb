require 'spec_helper'

describe "events/index.html.haml" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :all_day => false
      ),
      stub_model(Event,
        :name => "Name",
        :all_day => false
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
