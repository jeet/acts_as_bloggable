require "spec_helper"

module ActsAsBloggable
  describe VersionsController do
    describe "routing" do
  
      it "routes to #index" do
        get("/versions").should route_to("versions#index")
      end
  
      it "routes to #new" do
        get("/versions/new").should route_to("versions#new")
      end
  
      it "routes to #show" do
        get("/versions/1").should route_to("versions#show", :id => "1")
      end
  
      it "routes to #edit" do
        get("/versions/1/edit").should route_to("versions#edit", :id => "1")
      end
  
      it "routes to #create" do
        post("/versions").should route_to("versions#create")
      end
  
      it "routes to #update" do
        put("/versions/1").should route_to("versions#update", :id => "1")
      end
  
      it "routes to #destroy" do
        delete("/versions/1").should route_to("versions#destroy", :id => "1")
      end
  
    end
  end
end
