require 'spec_helper'

describe "testdb2s/new.html.erb" do
  before(:each) do
    assign(:testdb2, stub_model(Testdb2,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new testdb2 form" do
    render

    rendered.should have_selector("form", :action => testdb2s_path, :method => "post") do |form|
      form.should have_selector("input#testdb2_name", :name => "testdb2[name]")
    end
  end
end
