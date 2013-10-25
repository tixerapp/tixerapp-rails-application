require 'spec_helper'

describe "timelines/show" do
  before(:each) do
    @timeline = assign(:timeline, stub_model(Timeline,
      :user => nil,
      :route => "Route",
      :content => "MyText",
      :hidden => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Route/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
