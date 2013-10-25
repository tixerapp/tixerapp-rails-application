require 'spec_helper'

describe "chats/index" do
  before(:each) do
    assign(:chats, [
      stub_model(Chat,
        :sender => nil,
        :recipient => nil,
        :content => "MyText",
        :read => false
      ),
      stub_model(Chat,
        :sender => nil,
        :recipient => nil,
        :content => "MyText",
        :read => false
      )
    ])
  end

  it "renders a list of chats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
