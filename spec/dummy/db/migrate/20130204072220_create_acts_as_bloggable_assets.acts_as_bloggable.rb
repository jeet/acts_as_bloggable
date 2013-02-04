# This migration comes from acts_as_bloggable (originally 20130204072202)
class CreateActsAsBloggableAssets < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_assets do |t|
      t.string :name
      t.text :description
      t.integer :assetable_id
      t.string :assetable_type

      t.timestamps
    end
  end
end
