require "spec_helper"

describe ConnectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/connections" }.should route_to(:controller => "connections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/connections/new" }.should route_to(:controller => "connections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/connections/1" }.should route_to(:controller => "connections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/connections/1/edit" }.should route_to(:controller => "connections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/connections" }.should route_to(:controller => "connections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/connections/1" }.should route_to(:controller => "connections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/connections/1" }.should route_to(:controller => "connections", :action => "destroy", :id => "1")
    end

  end
end
