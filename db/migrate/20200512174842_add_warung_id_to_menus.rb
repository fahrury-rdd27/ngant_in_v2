class AddWarungIdToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :warung_id, :integer
  end
end
