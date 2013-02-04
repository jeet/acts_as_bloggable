class AddAncestryToActsAsBloggableCategories < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_categories, :ancestry, :string
    add_index :acts_as_bloggable_categories, :ancestry
  end
end
