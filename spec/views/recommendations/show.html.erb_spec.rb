require 'spec_helper'

describe "recommendations/show" do
  before(:each) do
    @recommendation = assign(:recommendation, stub_model(Recommendation,
      :user => nil,
      :recommender => nil,
      :content => "MyText",
      :accepted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
