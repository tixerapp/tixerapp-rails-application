require 'spec_helper'

describe "chats/edit" do
  before(:each) do
    @chat = assign(:chat, stub_model(Chat,
      :sender => nil,
      :recipient => nil,
      :content => "MyText",
      :read => false
    ))
  end

  it "renders the edit chat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chat_path(@chat), "post" do
      assert_select "input#chat_sender[name=?]", "chat[sender]"
      assert_select "input#chat_recipient[name=?]", "chat[recipient]"
      assert_select "textarea#chat_content[name=?]", "chat[content]"
      assert_select "input#chat_read[name=?]", "chat[read]"
    end
  end
end
