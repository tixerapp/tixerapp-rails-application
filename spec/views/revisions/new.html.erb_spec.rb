require 'spec_helper'

describe "revisions/new" do
  before(:each) do
    assign(:revision, stub_model(Revision,
      :user => nil,
      :document => nil,
      :content => "",
      :mimetype => "MyString"
    ).as_new_record)
  end

  it "renders new revision form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", revisions_path, "post" do
      assert_select "input#revision_user[name=?]", "revision[user]"
      assert_select "input#revision_document[name=?]", "revision[document]"
      assert_select "input#revision_content[name=?]", "revision[content]"
      assert_select "input#revision_mimetype[name=?]", "revision[mimetype]"
    end
  end
end
