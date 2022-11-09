class AddUniqueIndexToInvitation < ActiveRecord::Migration[6.1]
  def change
    add_index :invitations, [:user_id, :event_id], unique: true 
  end
end
