require 'spec_helper'

describe "documents/index" do
  before(:each) do
    assign(:documents, [
      stub_model(Document,
        :user => nil,
        :topic => nil,
        :level => nil,
        :name => "Name",
        :kind => "Kind",
        :content => "MyText"
      ),
      stub_model(Document,
        :user => nil,
        :topic => nil,
        :level => nil,
        :name => "Name",
        :kind => "Kind",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
