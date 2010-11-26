require 'spec_helper'

describe "groups/show.html.haml" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :name => "Name",
      :description => "MyText",
      :list_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
