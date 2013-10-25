require 'spec_helper'

describe "recommendations/index" do
  before(:each) do
    assign(:recommendations, [
      stub_model(Recommendation,
        :user => nil,
        :recommender => nil,
        :content => "MyText",
        :accepted => false
      ),
      stub_model(Recommendation,
        :user => nil,
        :recommender => nil,
        :content => "MyText",
        :accepted => false
      )
    ])
  end

  it "renders a list of recommendations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
