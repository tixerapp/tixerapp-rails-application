require 'spec_helper'

describe "activities/edit" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :user => nil,
      :name => "MyString",
      :website => "MyString",
      :content => "MyString",
      :avatar => "",
      :address => "MyText",
      :privacy => "MyString"
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do
      assert_select "input#activity_user[name=?]", "activity[user]"
      assert_select "input#activity_name[name=?]", "activity[name]"
      assert_select "input#activity_website[name=?]", "activity[website]"
      assert_select "input#activity_content[name=?]", "activity[content]"
      assert_select "input#activity_avatar[name=?]", "activity[avatar]"
      assert_select "textarea#activity_address[name=?]", "activity[address]"
      assert_select "input#activity_privacy[name=?]", "activity[privacy]"
    end
  end
end
