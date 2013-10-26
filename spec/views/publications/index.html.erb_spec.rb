require 'spec_helper'

describe "publications/index" do
  before(:each) do
    assign(:publications, [
      stub_model(Publication,
        :user => nil,
        :organization => nil,
        :title => "MyText",
        :content => "MyText"
      ),
      stub_model(Publication,
        :user => nil,
        :organization => nil,
        :title => "MyText",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of publications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
