require 'spec_helper'

describe "jobs/edit" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :user => nil,
      :organization => nil,
      :position => "MyString",
      :content => "MyText",
      :is_current => false
    ))
  end

  it "renders the edit job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_path(@job), "post" do
      assert_select "input#job_user[name=?]", "job[user]"
      assert_select "input#job_organization[name=?]", "job[organization]"
      assert_select "input#job_position[name=?]", "job[position]"
      assert_select "textarea#job_content[name=?]", "job[content]"
      assert_select "input#job_is_current[name=?]", "job[is_current]"
    end
  end
end
