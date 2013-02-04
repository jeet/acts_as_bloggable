# This migration comes from acts_as_bloggable (originally 20130204074736)
class AddAncestryToActsAsBloggablePages < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_pages, :ancestry, :string
  end
end
