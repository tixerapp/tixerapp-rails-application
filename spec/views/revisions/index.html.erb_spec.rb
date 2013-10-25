require 'spec_helper'

describe "revisions/index" do
  before(:each) do
    assign(:revisions, [
      stub_model(Revision,
        :user => nil,
        :document => nil,
        :content => "",
        :mimetype => "Mimetype"
      ),
      stub_model(Revision,
        :user => nil,
        :document => nil,
        :content => "",
        :mimetype => "Mimetype"
      )
    ])
  end

  it "renders a list of revisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Mimetype".to_s, :count => 2
  end
end
