class AddTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :type, :string, default: "Client", limit: 10 
    add_index :users, :type

  end
end
