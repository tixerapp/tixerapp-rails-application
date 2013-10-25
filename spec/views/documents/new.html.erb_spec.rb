require 'spec_helper'

describe "documents/new" do
  before(:each) do
    assign(:document, stub_model(Document,
      :user => nil,
      :topic => nil,
      :level => nil,
      :name => "MyString",
      :kind => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", documents_path, "post" do
      assert_select "input#document_user[name=?]", "document[user]"
      assert_select "input#document_topic[name=?]", "document[topic]"
      assert_select "input#document_level[name=?]", "document[level]"
      assert_select "input#document_name[name=?]", "document[name]"
      assert_select "input#document_kind[name=?]", "document[kind]"
      assert_select "textarea#document_content[name=?]", "document[content]"
    end
  end
end
