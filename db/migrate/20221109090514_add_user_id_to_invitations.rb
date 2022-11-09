class AddUserIdToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :user_id, :integer
  end
end
