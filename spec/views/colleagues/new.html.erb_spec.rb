require 'spec_helper'

describe "colleagues/new" do
  before(:each) do
    assign(:colleague, stub_model(Colleague,
      :follower => nil,
      :following => nil,
      :accepted => false,
      :follower_blocked => false,
      :following_blocked => false
    ).as_new_record)
  end

  it "renders new colleague form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colleagues_path, "post" do
      assert_select "input#colleague_follower[name=?]", "colleague[follower]"
      assert_select "input#colleague_following[name=?]", "colleague[following]"
      assert_select "input#colleague_accepted[name=?]", "colleague[accepted]"
      assert_select "input#colleague_follower_blocked[name=?]", "colleague[follower_blocked]"
      assert_select "input#colleague_following_blocked[name=?]", "colleague[following_blocked]"
    end
  end
end
