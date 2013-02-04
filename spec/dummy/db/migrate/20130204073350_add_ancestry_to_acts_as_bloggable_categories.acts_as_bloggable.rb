# This migration comes from acts_as_bloggable (originally 20130204073212)
class AddAncestryToActsAsBloggableCategories < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_categories, :ancestry, :string
    add_index :acts_as_bloggable_categories, :ancestry
  end
end
