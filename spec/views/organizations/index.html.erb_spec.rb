require 'spec_helper'

describe "organizations/index" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :name => "Name",
        :kind => "Kind",
        :website => "Website",
        :content => "Content",
        :address => "MyText",
        :avatar => "",
        :lat => 1.5,
        :lng => 1.5
      ),
      stub_model(Organization,
        :name => "Name",
        :kind => "Kind",
        :website => "Website",
        :content => "Content",
        :address => "MyText",
        :avatar => "",
        :lat => 1.5,
        :lng => 1.5
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
