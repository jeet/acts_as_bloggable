require_dependency "acts_as_bloggable/application_controller"

module ActsAsBloggable
  class IdentitiesController < ApplicationController
    def new
      @identity = env['omniauth.identity']
    end
  end
end
