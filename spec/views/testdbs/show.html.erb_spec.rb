require 'spec_helper'

describe "testdbs/show.html.erb" do
  before(:each) do
    @testdb = assign(:testdb, stub_model(Testdb,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
