require 'spec_helper'

describe "jobs/new" do
  before(:each) do
    assign(:job, stub_model(Job,
      :user => nil,
      :organization => nil,
      :position => "MyString",
      :content => "MyText",
      :is_current => false
    ).as_new_record)
  end

  it "renders new job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jobs_path, "post" do
      assert_select "input#job_user[name=?]", "job[user]"
      assert_select "input#job_organization[name=?]", "job[organization]"
      assert_select "input#job_position[name=?]", "job[position]"
      assert_select "textarea#job_content[name=?]", "job[content]"
      assert_select "input#job_is_current[name=?]", "job[is_current]"
    end
  end
end
