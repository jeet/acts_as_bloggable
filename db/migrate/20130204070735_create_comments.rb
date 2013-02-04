class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :acts_as_bloggable_comments do |t|
      t.string :title, :limit => 50, :default => "" 
      t.text :comment
      t.references :commentable, :polymorphic => true
      t.references :user
      t.timestamps
    end

    add_index :acts_as_bloggable_comments, :commentable_type
    add_index :acts_as_bloggable_comments, :commentable_id
    add_index :acts_as_bloggable_comments, :user_id
  end

  def self.down
    drop_table :acts_as_bloggable_comments
  end
end
