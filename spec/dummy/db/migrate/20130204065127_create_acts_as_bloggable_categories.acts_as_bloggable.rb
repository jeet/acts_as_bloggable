# This migration comes from acts_as_bloggable (originally 20130204065037)
class CreateActsAsBloggableCategories < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
