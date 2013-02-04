# This migration comes from acts_as_bloggable (originally 20130204075025)
class AddAncestryToActsAsBloggablePosts < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_posts, :ancestry, :string
  end
end
