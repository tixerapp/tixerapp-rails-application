require "spec_helper"

describe ColleaguesController do
  describe "routing" do

    it "routes to #index" do
      get("/colleagues").should route_to("colleagues#index")
    end

    it "routes to #new" do
      get("/colleagues/new").should route_to("colleagues#new")
    end

    it "routes to #show" do
      get("/colleagues/1").should route_to("colleagues#show", :id => "1")
    end

    it "routes to #edit" do
      get("/colleagues/1/edit").should route_to("colleagues#edit", :id => "1")
    end

    it "routes to #create" do
      post("/colleagues").should route_to("colleagues#create")
    end

    it "routes to #update" do
      put("/colleagues/1").should route_to("colleagues#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/colleagues/1").should route_to("colleagues#destroy", :id => "1")
    end

  end
end
