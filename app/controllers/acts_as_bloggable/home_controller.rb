require_dependency "acts_as_bloggable/application_controller"

module ActsAsBloggable
  class HomeController < ApplicationController
    before_filter :authenticate
    def index
    end
  end
end
