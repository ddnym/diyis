require "spec_helper"

describe TestdbsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/testdbs" }.should route_to(:controller => "testdbs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/testdbs/new" }.should route_to(:controller => "testdbs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/testdbs/1" }.should route_to(:controller => "testdbs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/testdbs/1/edit" }.should route_to(:controller => "testdbs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/testdbs" }.should route_to(:controller => "testdbs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/testdbs/1" }.should route_to(:controller => "testdbs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/testdbs/1" }.should route_to(:controller => "testdbs", :action => "destroy", :id => "1")
    end

  end
end
