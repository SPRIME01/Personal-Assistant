require 'spec_helper'

describe "colors/show.html.haml" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :name => "Name",
      :hex => "Hex"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Hex/)
  end
end
