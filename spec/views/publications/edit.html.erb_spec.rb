require 'spec_helper'

describe "publications/edit" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :user => nil,
      :organization => nil,
      :title => "MyText",
      :content => "MyText"
    ))
  end

  it "renders the edit publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do
      assert_select "input#publication_user[name=?]", "publication[user]"
      assert_select "input#publication_organization[name=?]", "publication[organization]"
      assert_select "textarea#publication_title[name=?]", "publication[title]"
      assert_select "textarea#publication_content[name=?]", "publication[content]"
    end
  end
end
