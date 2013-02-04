module ActsAsBloggable
  class Version < ActiveRecord::Base
    attr_accessible :description, :name, :versionable_id, :versionable_type
    belongs_to :versionable, :polymorphic => true
    belongs_to :user
  end
end
