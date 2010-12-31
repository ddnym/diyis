require 'spec_helper'

describe TestdbsController do

  def mock_testdb(stubs={})
    (@mock_testdb ||= mock_model(Testdb).as_null_object).tap do |testdb|
      testdb.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all testdbs as @testdbs" do
      Testdb.stub(:all) { [mock_testdb] }
      get :index
      assigns(:testdbs).should eq([mock_testdb])
    end
  end

  describe "GET show" do
    it "assigns the requested testdb as @testdb" do
      Testdb.stub(:find).with("37") { mock_testdb }
      get :show, :id => "37"
      assigns(:testdb).should be(mock_testdb)
    end
  end

  describe "GET new" do
    it "assigns a new testdb as @testdb" do
      Testdb.stub(:new) { mock_testdb }
      get :new
      assigns(:testdb).should be(mock_testdb)
    end
  end

  describe "GET edit" do
    it "assigns the requested testdb as @testdb" do
      Testdb.stub(:find).with("37") { mock_testdb }
      get :edit, :id => "37"
      assigns(:testdb).should be(mock_testdb)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created testdb as @testdb" do
        Testdb.stub(:new).with({'these' => 'params'}) { mock_testdb(:save => true) }
        post :create, :testdb => {'these' => 'params'}
        assigns(:testdb).should be(mock_testdb)
      end

      it "redirects to the created testdb" do
        Testdb.stub(:new) { mock_testdb(:save => true) }
        post :create, :testdb => {}
        response.should redirect_to(testdb_url(mock_testdb))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved testdb as @testdb" do
        Testdb.stub(:new).with({'these' => 'params'}) { mock_testdb(:save => false) }
        post :create, :testdb => {'these' => 'params'}
        assigns(:testdb).should be(mock_testdb)
      end

      it "re-renders the 'new' template" do
        Testdb.stub(:new) { mock_testdb(:save => false) }
        post :create, :testdb => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested testdb" do
        Testdb.should_receive(:find).with("37") { mock_testdb }
        mock_testdb.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :testdb => {'these' => 'params'}
      end

      it "assigns the requested testdb as @testdb" do
        Testdb.stub(:find) { mock_testdb(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:testdb).should be(mock_testdb)
      end

      it "redirects to the testdb" do
        Testdb.stub(:find) { mock_testdb(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(testdb_url(mock_testdb))
      end
    end

    describe "with invalid params" do
      it "assigns the testdb as @testdb" do
        Testdb.stub(:find) { mock_testdb(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:testdb).should be(mock_testdb)
      end

      it "re-renders the 'edit' template" do
        Testdb.stub(:find) { mock_testdb(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested testdb" do
      Testdb.should_receive(:find).with("37") { mock_testdb }
      mock_testdb.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the testdbs list" do
      Testdb.stub(:find) { mock_testdb }
      delete :destroy, :id => "1"
      response.should redirect_to(testdbs_url)
    end
  end

end
