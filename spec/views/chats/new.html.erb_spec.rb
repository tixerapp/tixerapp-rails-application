require 'spec_helper'

describe "chats/new" do
  before(:each) do
    assign(:chat, stub_model(Chat,
      :sender => nil,
      :recipient => nil,
      :content => "MyText",
      :read => false
    ).as_new_record)
  end

  it "renders new chat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chats_path, "post" do
      assert_select "input#chat_sender[name=?]", "chat[sender]"
      assert_select "input#chat_recipient[name=?]", "chat[recipient]"
      assert_select "textarea#chat_content[name=?]", "chat[content]"
      assert_select "input#chat_read[name=?]", "chat[read]"
    end
  end
end
