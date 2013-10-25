require 'spec_helper'

describe "organizations/show" do
  before(:each) do
    @organization = assign(:organization, stub_model(Organization,
      :name => "Name",
      :kind => "Kind",
      :website => "Website",
      :content => "Content",
      :address => "MyText",
      :avatar => "",
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Kind/)
    rendered.should match(/Website/)
    rendered.should match(/Content/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
