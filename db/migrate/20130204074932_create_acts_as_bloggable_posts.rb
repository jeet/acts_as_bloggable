class CreateActsAsBloggablePosts < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_posts do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.string :permalink
      t.string :rendering_engine
      t.string :state
      t.datetime :published_at

      t.timestamps
    end
  end
end
