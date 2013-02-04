class AddAncestryToActsAsBloggablePages < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_pages, :ancestry, :string
  end
end
