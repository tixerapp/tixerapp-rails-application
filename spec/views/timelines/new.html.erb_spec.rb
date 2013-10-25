require 'spec_helper'

describe "timelines/new" do
  before(:each) do
    assign(:timeline, stub_model(Timeline,
      :user => nil,
      :route => "MyString",
      :content => "MyText",
      :hidden => false
    ).as_new_record)
  end

  it "renders new timeline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", timelines_path, "post" do
      assert_select "input#timeline_user[name=?]", "timeline[user]"
      assert_select "input#timeline_route[name=?]", "timeline[route]"
      assert_select "textarea#timeline_content[name=?]", "timeline[content]"
      assert_select "input#timeline_hidden[name=?]", "timeline[hidden]"
    end
  end
end
