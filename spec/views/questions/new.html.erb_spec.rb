require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :user => nil,
      :topic => nil,
      :name => "MyString",
      :content => "MyText",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "input#question_user[name=?]", "question[user]"
      assert_select "input#question_topic[name=?]", "question[topic]"
      assert_select "input#question_name[name=?]", "question[name]"
      assert_select "textarea#question_content[name=?]", "question[content]"
      assert_select "input#question_status[name=?]", "question[status]"
    end
  end
end
