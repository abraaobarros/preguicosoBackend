require "spec_helper"

describe ItemCardapiosController do
  describe "routing" do

    it "routes to #index" do
      get("/item_cardapios").should route_to("item_cardapios#index")
    end

    it "routes to #new" do
      get("/item_cardapios/new").should route_to("item_cardapios#new")
    end

    it "routes to #show" do
      get("/item_cardapios/1").should route_to("item_cardapios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_cardapios/1/edit").should route_to("item_cardapios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_cardapios").should route_to("item_cardapios#create")
    end

    it "routes to #update" do
      put("/item_cardapios/1").should route_to("item_cardapios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_cardapios/1").should route_to("item_cardapios#destroy", :id => "1")
    end

  end
end
