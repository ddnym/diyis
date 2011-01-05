require 'spec_helper'

describe Testdb2sController do

  def mock_testdb2(stubs={})
    (@mock_testdb2 ||= mock_model(Testdb2).as_null_object).tap do |testdb2|
      testdb2.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all testdb2s as @testdb2s" do
      Testdb2.stub(:all) { [mock_testdb2] }
      get :index
      assigns(:testdb2s).should eq([mock_testdb2])
    end
  end

  describe "GET show" do
    it "assigns the requested testdb2 as @testdb2" do
      Testdb2.stub(:find).with("37") { mock_testdb2 }
      get :show, :id => "37"
      assigns(:testdb2).should be(mock_testdb2)
    end
  end

  describe "GET new" do
    it "assigns a new testdb2 as @testdb2" do
      Testdb2.stub(:new) { mock_testdb2 }
      get :new
      assigns(:testdb2).should be(mock_testdb2)
    end
  end

  describe "GET edit" do
    it "assigns the requested testdb2 as @testdb2" do
      Testdb2.stub(:find).with("37") { mock_testdb2 }
      get :edit, :id => "37"
      assigns(:testdb2).should be(mock_testdb2)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created testdb2 as @testdb2" do
        Testdb2.stub(:new).with({'these' => 'params'}) { mock_testdb2(:save => true) }
        post :create, :testdb2 => {'these' => 'params'}
        assigns(:testdb2).should be(mock_testdb2)
      end

      it "redirects to the created testdb2" do
        Testdb2.stub(:new) { mock_testdb2(:save => true) }
        post :create, :testdb2 => {}
        response.should redirect_to(testdb2_url(mock_testdb2))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved testdb2 as @testdb2" do
        Testdb2.stub(:new).with({'these' => 'params'}) { mock_testdb2(:save => false) }
        post :create, :testdb2 => {'these' => 'params'}
        assigns(:testdb2).should be(mock_testdb2)
      end

      it "re-renders the 'new' template" do
        Testdb2.stub(:new) { mock_testdb2(:save => false) }
        post :create, :testdb2 => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested testdb2" do
        Testdb2.should_receive(:find).with("37") { mock_testdb2 }
        mock_testdb2.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :testdb2 => {'these' => 'params'}
      end

      it "assigns the requested testdb2 as @testdb2" do
        Testdb2.stub(:find) { mock_testdb2(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:testdb2).should be(mock_testdb2)
      end

      it "redirects to the testdb2" do
        Testdb2.stub(:find) { mock_testdb2(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(testdb2_url(mock_testdb2))
      end
    end

    describe "with invalid params" do
      it "assigns the testdb2 as @testdb2" do
        Testdb2.stub(:find) { mock_testdb2(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:testdb2).should be(mock_testdb2)
      end

      it "re-renders the 'edit' template" do
        Testdb2.stub(:find) { mock_testdb2(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested testdb2" do
      Testdb2.should_receive(:find).with("37") { mock_testdb2 }
      mock_testdb2.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the testdb2s list" do
      Testdb2.stub(:find) { mock_testdb2 }
      delete :destroy, :id => "1"
      response.should redirect_to(testdb2s_url)
    end
  end

end
