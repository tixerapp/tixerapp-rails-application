require 'spec_helper'

describe "bookmarks/new" do
  before(:each) do
    assign(:bookmark, stub_model(Bookmark,
      :user => nil,
      :document => nil,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookmarks_path, "post" do
      assert_select "input#bookmark_user[name=?]", "bookmark[user]"
      assert_select "input#bookmark_document[name=?]", "bookmark[document]"
      assert_select "textarea#bookmark_note[name=?]", "bookmark[note]"
    end
  end
end
