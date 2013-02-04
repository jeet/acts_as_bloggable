# This migration comes from acts_as_bloggable (originally 20130204071947)
class CreateActsAsBloggableSections < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_sections do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
