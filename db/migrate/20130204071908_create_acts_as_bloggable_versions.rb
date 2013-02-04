class CreateActsAsBloggableVersions < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_versions do |t|
      t.string :name
      t.text :description
      t.integer :versionable_id
      t.string :versionable_type

      t.timestamps
    end
  end
end
