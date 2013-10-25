require 'spec_helper'

describe "recommendations/new" do
  before(:each) do
    assign(:recommendation, stub_model(Recommendation,
      :user => nil,
      :recommender => nil,
      :content => "MyText",
      :accepted => false
    ).as_new_record)
  end

  it "renders new recommendation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recommendations_path, "post" do
      assert_select "input#recommendation_user[name=?]", "recommendation[user]"
      assert_select "input#recommendation_recommender[name=?]", "recommendation[recommender]"
      assert_select "textarea#recommendation_content[name=?]", "recommendation[content]"
      assert_select "input#recommendation_accepted[name=?]", "recommendation[accepted]"
    end
  end
end
