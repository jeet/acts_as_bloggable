module ActsAsBloggable
  class Page < ActiveRecord::Base
    attr_accessible :content, :permalink, :published_at, :summary, :title
    has_ancestry
  end
end
