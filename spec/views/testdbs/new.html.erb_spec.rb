require 'spec_helper'

describe "testdbs/new.html.erb" do
  before(:each) do
    assign(:testdb, stub_model(Testdb,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new testdb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testdbs_path, :method => "post" do
      assert_select "input#testdb_name", :name => "testdb[name]"
    end
  end
end
