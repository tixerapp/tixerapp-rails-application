require 'spec_helper'

describe "jobs/show" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :user => nil,
      :organization => nil,
      :position => "Position",
      :content => "MyText",
      :is_current => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Position/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
