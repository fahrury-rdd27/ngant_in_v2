class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :nama
      t.string :harga

      t.timestamps
    end
  end
end
