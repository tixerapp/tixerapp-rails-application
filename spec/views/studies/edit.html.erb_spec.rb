require 'spec_helper'

describe "studies/edit" do
  before(:each) do
    @study = assign(:study, stub_model(Study,
      :user => nil,
      :organization => nil,
      :degree => "MyString",
      :content => "MyText",
      :is_current => false
    ))
  end

  it "renders the edit study form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", study_path(@study), "post" do
      assert_select "input#study_user[name=?]", "study[user]"
      assert_select "input#study_organization[name=?]", "study[organization]"
      assert_select "input#study_degree[name=?]", "study[degree]"
      assert_select "textarea#study_content[name=?]", "study[content]"
      assert_select "input#study_is_current[name=?]", "study[is_current]"
    end
  end
end
