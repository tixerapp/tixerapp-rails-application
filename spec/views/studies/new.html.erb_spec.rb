require 'spec_helper'

describe "studies/new" do
  before(:each) do
    assign(:study, stub_model(Study,
      :user => nil,
      :organization => nil,
      :degree => "MyString",
      :content => "MyText",
      :is_current => false
    ).as_new_record)
  end

  it "renders new study form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", studies_path, "post" do
      assert_select "input#study_user[name=?]", "study[user]"
      assert_select "input#study_organization[name=?]", "study[organization]"
      assert_select "input#study_degree[name=?]", "study[degree]"
      assert_select "textarea#study_content[name=?]", "study[content]"
      assert_select "input#study_is_current[name=?]", "study[is_current]"
    end
  end
end
