require 'spec_helper'

describe "respects/edit" do
  before(:each) do
    @respect = assign(:respect, stub_model(Respect,
      :user => nil,
      :colleague => nil,
      :blocked => false
    ))
  end

  it "renders the edit respect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", respect_path(@respect), "post" do
      assert_select "input#respect_user[name=?]", "respect[user]"
      assert_select "input#respect_colleague[name=?]", "respect[colleague]"
      assert_select "input#respect_blocked[name=?]", "respect[blocked]"
    end
  end
end
