require 'spec_helper'

describe "respects/index" do
  before(:each) do
    assign(:respects, [
      stub_model(Respect,
        :user => nil,
        :colleague => nil,
        :blocked => false
      ),
      stub_model(Respect,
        :user => nil,
        :colleague => nil,
        :blocked => false
      )
    ])
  end

  it "renders a list of respects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
