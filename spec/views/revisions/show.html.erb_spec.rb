require 'spec_helper'

describe "revisions/show" do
  before(:each) do
    @revision = assign(:revision, stub_model(Revision,
      :user => nil,
      :document => nil,
      :content => "",
      :mimetype => "Mimetype"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Mimetype/)
  end
end
