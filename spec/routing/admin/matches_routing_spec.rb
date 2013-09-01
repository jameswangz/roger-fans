require "spec_helper"

describe Admin::MatchesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/matches").should route_to("admin/matches#index")
    end

    it "routes to #new" do
      get("/admin/matches/new").should route_to("admin/matches#new")
    end

    it "routes to #show" do
      get("/admin/matches/1").should route_to("admin/matches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/matches/1/edit").should route_to("admin/matches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/matches").should route_to("admin/matches#create")
    end

    it "routes to #update" do
      put("/admin/matches/1").should route_to("admin/matches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/matches/1").should route_to("admin/matches#destroy", :id => "1")
    end

  end
end
