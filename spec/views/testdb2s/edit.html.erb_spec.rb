require 'spec_helper'

describe "testdb2s/edit.html.erb" do
  before(:each) do
    @testdb2 = assign(:testdb2, stub_model(Testdb2,
      :name => "MyString"
    ))
  end

  it "renders the edit testdb2 form" do
    render

    rendered.should have_selector("form", :action => testdb2_path(@testdb2), :method => "post") do |form|
      form.should have_selector("input#testdb2_name", :name => "testdb2[name]")
    end
  end
end
