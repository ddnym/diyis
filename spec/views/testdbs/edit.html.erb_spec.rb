require 'spec_helper'

describe "testdbs/edit.html.erb" do
  before(:each) do
    @testdb = assign(:testdb, stub_model(Testdb,
      :name => "MyString"
    ))
  end

  it "renders the edit testdb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testdb_path(@testdb), :method => "post" do
      assert_select "input#testdb_name", :name => "testdb[name]"
    end
  end
end
