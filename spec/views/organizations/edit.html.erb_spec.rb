require 'spec_helper'

describe "organizations/edit" do
  before(:each) do
    @organization = assign(:organization, stub_model(Organization,
      :name => "MyString",
      :kind => "MyString",
      :website => "MyString",
      :content => "MyString",
      :address => "MyText",
      :avatar => "",
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders the edit organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do
      assert_select "input#organization_name[name=?]", "organization[name]"
      assert_select "input#organization_kind[name=?]", "organization[kind]"
      assert_select "input#organization_website[name=?]", "organization[website]"
      assert_select "input#organization_content[name=?]", "organization[content]"
      assert_select "textarea#organization_address[name=?]", "organization[address]"
      assert_select "input#organization_avatar[name=?]", "organization[avatar]"
      assert_select "input#organization_lat[name=?]", "organization[lat]"
      assert_select "input#organization_lng[name=?]", "organization[lng]"
    end
  end
end
