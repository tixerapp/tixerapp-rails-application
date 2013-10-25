require 'spec_helper'

describe "timelines/index" do
  before(:each) do
    assign(:timelines, [
      stub_model(Timeline,
        :user => nil,
        :route => "Route",
        :content => "MyText",
        :hidden => false
      ),
      stub_model(Timeline,
        :user => nil,
        :route => "Route",
        :content => "MyText",
        :hidden => false
      )
    ])
  end

  it "renders a list of timelines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Route".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
