class AddUserIdToTshirts < ActiveRecord::Migration
  def change
    add_column :tshirts, :user_id, :integer
  end
end
