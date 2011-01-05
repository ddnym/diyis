require "spec_helper"

describe Testdb2sController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/testdb2s" }.should route_to(:controller => "testdb2s", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/testdb2s/new" }.should route_to(:controller => "testdb2s", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/testdb2s/1" }.should route_to(:controller => "testdb2s", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/testdb2s/1/edit" }.should route_to(:controller => "testdb2s", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/testdb2s" }.should route_to(:controller => "testdb2s", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/testdb2s/1" }.should route_to(:controller => "testdb2s", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/testdb2s/1" }.should route_to(:controller => "testdb2s", :action => "destroy", :id => "1")
    end

  end
end
