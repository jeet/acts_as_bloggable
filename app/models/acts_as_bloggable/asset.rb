module ActsAsBloggable
  class Asset < ActiveRecord::Base
    attr_accessible :assetable_id, :assetable_type, :description, :name
    belongs_to :assetable, :polymorphic => true
    belongs_to :page
    belongs_to :post
  end
end
