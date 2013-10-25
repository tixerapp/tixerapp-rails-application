require 'spec_helper'

describe "bookmarks/edit" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :user => nil,
      :document => nil,
      :note => "MyText"
    ))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookmark_path(@bookmark), "post" do
      assert_select "input#bookmark_user[name=?]", "bookmark[user]"
      assert_select "input#bookmark_document[name=?]", "bookmark[document]"
      assert_select "textarea#bookmark_note[name=?]", "bookmark[note]"
    end
  end
end
