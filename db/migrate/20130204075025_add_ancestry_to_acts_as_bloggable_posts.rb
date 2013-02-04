class AddAncestryToActsAsBloggablePosts < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_posts, :ancestry, :string
  end
end
