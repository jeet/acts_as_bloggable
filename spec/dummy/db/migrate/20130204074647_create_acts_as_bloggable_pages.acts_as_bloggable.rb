# This migration comes from acts_as_bloggable (originally 20130204074625)
class CreateActsAsBloggablePages < ActiveRecord::Migration
  def change
    create_table :acts_as_bloggable_pages do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.string :permalink
      t.datetime :published_at

      t.timestamps
    end
  end
end
