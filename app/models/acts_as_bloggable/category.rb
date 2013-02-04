module ActsAsBloggable
  class Category < ActiveRecord::Base
    attr_accessible :description, :name
    has_ancestry
  end
end
