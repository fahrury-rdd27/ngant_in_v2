class AddNamaDanAlamatToWarungs < ActiveRecord::Migration[6.0]
  def change
    add_column :warungs, :nama, :string
    add_column :warungs, :alamat, :string
  end
end
