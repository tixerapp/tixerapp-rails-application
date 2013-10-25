require 'spec_helper'

describe "respects/show" do
  before(:each) do
    @respect = assign(:respect, stub_model(Respect,
      :user => nil,
      :colleague => nil,
      :blocked => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/false/)
  end
end
