class CreateActsAsBloggableUsers < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_users do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
