require 'spec_helper'

describe "studies/show" do
  before(:each) do
    @study = assign(:study, stub_model(Study,
      :user => nil,
      :organization => nil,
      :degree => "Degree",
      :content => "MyText",
      :is_current => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Degree/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
