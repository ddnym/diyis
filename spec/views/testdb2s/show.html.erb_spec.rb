require 'spec_helper'

describe "testdb2s/show.html.erb" do
  before(:each) do
    @testdb2 = assign(:testdb2, stub_model(Testdb2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
  end
end
