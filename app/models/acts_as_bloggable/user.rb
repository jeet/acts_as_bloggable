module ActsAsBloggable
  class User < ActiveRecord::Base
    attr_accessible :description, :name, :provider, :uid

    acts_as_commentable

    def self.from_omniauth(auth)
      find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
    end

    def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
      end
    end
  end
end
