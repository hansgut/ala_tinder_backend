class RemoveFieldsFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :birthday
    remove_column :users, :bio
    remove_column :users, :name
    remove_column :users, :hidden
  end
end
