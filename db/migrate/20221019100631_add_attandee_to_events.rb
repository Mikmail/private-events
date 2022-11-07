class AddAttandeeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :attandee, :string
  end
end
