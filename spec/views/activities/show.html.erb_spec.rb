require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :user => nil,
      :name => "Name",
      :website => "Website",
      :content => "Content",
      :avatar => "",
      :address => "MyText",
      :privacy => "Privacy"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/Website/)
    rendered.should match(/Content/)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/Privacy/)
  end
end
