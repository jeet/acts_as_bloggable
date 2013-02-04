class CreateActsAsBloggableSections < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_sections do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
