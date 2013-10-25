require 'spec_helper'

describe "colleagues/show" do
  before(:each) do
    @colleague = assign(:colleague, stub_model(Colleague,
      :follower => nil,
      :following => nil,
      :accepted => false,
      :follower_blocked => false,
      :following_blocked => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
