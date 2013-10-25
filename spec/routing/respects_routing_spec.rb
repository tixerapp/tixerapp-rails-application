require "spec_helper"

describe RespectsController do
  describe "routing" do

    it "routes to #index" do
      get("/respects").should route_to("respects#index")
    end

    it "routes to #new" do
      get("/respects/new").should route_to("respects#new")
    end

    it "routes to #show" do
      get("/respects/1").should route_to("respects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/respects/1/edit").should route_to("respects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/respects").should route_to("respects#create")
    end

    it "routes to #update" do
      put("/respects/1").should route_to("respects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/respects/1").should route_to("respects#destroy", :id => "1")
    end

  end
end
