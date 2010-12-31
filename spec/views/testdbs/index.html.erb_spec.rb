require 'spec_helper'

describe "testdbs/index.html.erb" do
  before(:each) do
    assign(:testdbs, [
      stub_model(Testdb,
        :name => "Name"
      ),
      stub_model(Testdb,
        :name => "Name"
      )
    ])
  end

  it "renders a list of testdbs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
