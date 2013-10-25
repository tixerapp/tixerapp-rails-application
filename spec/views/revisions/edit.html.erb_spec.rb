require 'spec_helper'

describe "revisions/edit" do
  before(:each) do
    @revision = assign(:revision, stub_model(Revision,
      :user => nil,
      :document => nil,
      :content => "",
      :mimetype => "MyString"
    ))
  end

  it "renders the edit revision form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", revision_path(@revision), "post" do
      assert_select "input#revision_user[name=?]", "revision[user]"
      assert_select "input#revision_document[name=?]", "revision[document]"
      assert_select "input#revision_content[name=?]", "revision[content]"
      assert_select "input#revision_mimetype[name=?]", "revision[mimetype]"
    end
  end
end
