require 'spec_helper'

module ActsAsBloggable
  describe HomeController do
  
    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end
  
  end
end
