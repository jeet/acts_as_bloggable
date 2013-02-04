module ActsAsBloggable
  class Post < ActiveRecord::Base
    attr_accessible :content, :permalink, :published_at, :rendering_engine, :state, :summary, :title
    has_ancestry
    acts_as_commentable
  end
end
