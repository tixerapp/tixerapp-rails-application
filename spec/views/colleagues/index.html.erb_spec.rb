require 'spec_helper'

describe "colleagues/index" do
  before(:each) do
    assign(:colleagues, [
      stub_model(Colleague,
        :follower => nil,
        :following => nil,
        :accepted => false,
        :follower_blocked => false,
        :following_blocked => false
      ),
      stub_model(Colleague,
        :follower => nil,
        :following => nil,
        :accepted => false,
        :follower_blocked => false,
        :following_blocked => false
      )
    ])
  end

  it "renders a list of colleagues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
