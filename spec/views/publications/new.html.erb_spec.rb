require 'spec_helper'

describe "publications/new" do
  before(:each) do
    assign(:publication, stub_model(Publication,
      :user => nil,
      :organization => nil,
      :title => "MyText",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publications_path, "post" do
      assert_select "input#publication_user[name=?]", "publication[user]"
      assert_select "input#publication_organization[name=?]", "publication[organization]"
      assert_select "textarea#publication_title[name=?]", "publication[title]"
      assert_select "textarea#publication_content[name=?]", "publication[content]"
    end
  end
end
