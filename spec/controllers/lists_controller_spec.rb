require 'spec_helper'

describe ListsController do

  def mock_list(stubs={})
    (@mock_list ||= mock_model(List).as_null_object).tap do |list|
      list.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all lists as @lists" do
      List.stub(:all) { [mock_list] }
      get :index
      assigns(:lists).should eq([mock_list])
    end
  end

  describe "GET show" do
    it "assigns the requested list as @list" do
      List.stub(:find).with("37") { mock_list }
      get :show, :id => "37"
      assigns(:list).should be(mock_list)
    end
  end

  describe "GET new" do
    it "assigns a new list as @list" do
      List.stub(:new) { mock_list }
      get :new
      assigns(:list).should be(mock_list)
    end
  end

  describe "GET edit" do
    it "assigns the requested list as @list" do
      List.stub(:find).with("37") { mock_list }
      get :edit, :id => "37"
      assigns(:list).should be(mock_list)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created list as @list" do
        List.stub(:new).with({'these' => 'params'}) { mock_list(:save => true) }
        post :create, :list => {'these' => 'params'}
        assigns(:list).should be(mock_list)
      end

      it "redirects to the created list" do
        List.stub(:new) { mock_list(:save => true) }
        post :create, :list => {}
        response.should redirect_to(list_url(mock_list))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved list as @list" do
        List.stub(:new).with({'these' => 'params'}) { mock_list(:save => false) }
        post :create, :list => {'these' => 'params'}
        assigns(:list).should be(mock_list)
      end

      it "re-renders the 'new' template" do
        List.stub(:new) { mock_list(:save => false) }
        post :create, :list => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested list" do
        List.should_receive(:find).with("37") { mock_list }
        mock_list.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :list => {'these' => 'params'}
      end

      it "assigns the requested list as @list" do
        List.stub(:find) { mock_list(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:list).should be(mock_list)
      end

      it "redirects to the list" do
        List.stub(:find) { mock_list(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(list_url(mock_list))
      end
    end

    describe "with invalid params" do
      it "assigns the list as @list" do
        List.stub(:find) { mock_list(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:list).should be(mock_list)
      end

      it "re-renders the 'edit' template" do
        List.stub(:find) { mock_list(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested list" do
      List.should_receive(:find).with("37") { mock_list }
      mock_list.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the lists list" do
      List.stub(:find) { mock_list }
      delete :destroy, :id => "1"
      response.should redirect_to(lists_url)
    end
  end

end
