class AddProviderAndUidToActsAsBloggableUsers < ActiveRecord::Migration
  def change
    add_column :acts_as_bloggable_users, :provider, :string
    add_column :acts_as_bloggable_users, :uid, :string
  end
end
