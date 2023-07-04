class AddDisplayNameToUsers < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :display_name, :string

    sql = "UPDATE users SET display_name = username WHERE display_name is null"
    ActiveRecord::Base.connection.execute(sql)
  end

  def down
    remove_column :users, :display_name
  end
end
