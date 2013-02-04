# This migration comes from acts_as_bloggable (originally 20130201125134)
class CreateActsAsBloggableIdentities < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_identities do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
