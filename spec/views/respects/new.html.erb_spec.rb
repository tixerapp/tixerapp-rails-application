require 'spec_helper'

describe "respects/new" do
  before(:each) do
    assign(:respect, stub_model(Respect,
      :user => nil,
      :colleague => nil,
      :blocked => false
    ).as_new_record)
  end

  it "renders new respect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", respects_path, "post" do
      assert_select "input#respect_user[name=?]", "respect[user]"
      assert_select "input#respect_colleague[name=?]", "respect[colleague]"
      assert_select "input#respect_blocked[name=?]", "respect[blocked]"
    end
  end
end
