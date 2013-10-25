require 'spec_helper'

describe "studies/index" do
  before(:each) do
    assign(:studies, [
      stub_model(Study,
        :user => nil,
        :organization => nil,
        :degree => "Degree",
        :content => "MyText",
        :is_current => false
      ),
      stub_model(Study,
        :user => nil,
        :organization => nil,
        :degree => "Degree",
        :content => "MyText",
        :is_current => false
      )
    ])
  end

  it "renders a list of studies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Degree".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
