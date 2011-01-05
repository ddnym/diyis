require 'spec_helper'

describe "testdb2s/index.html.erb" do
  before(:each) do
    assign(:testdb2s, [
      stub_model(Testdb2,
        :name => "Name"
      ),
      stub_model(Testdb2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of testdb2s" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
