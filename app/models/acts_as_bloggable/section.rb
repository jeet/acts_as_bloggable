module ActsAsBloggable
  class Section < ActiveRecord::Base
    attr_accessible :description, :name
  end
end
