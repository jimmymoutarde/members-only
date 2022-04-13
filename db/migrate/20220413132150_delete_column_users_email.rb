class DeleteColumnUsersEmail < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :name
    remove_column :users, :email
    remove_column :users, :password
  end

  def down
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :password, :string
  end
end
