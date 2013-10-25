require 'spec_helper'

describe "chats/show" do
  before(:each) do
    @chat = assign(:chat, stub_model(Chat,
      :sender => nil,
      :recipient => nil,
      :content => "MyText",
      :read => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
