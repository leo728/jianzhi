class AddUserIdToCom < ActiveRecord::Migration[5.0]
  def change
    add_column :coms, :user_id, :integer
  end
end
