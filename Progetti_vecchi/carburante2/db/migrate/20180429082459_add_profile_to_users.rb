class AddProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :luogo_preferito, :string
    add_column :users, :stazione_preferita, :string
    add_column :users, :carburante_preferito, :string
    add_column :users, :litri_serbatoio, :integer
    add_column :users, :targa, :string
  end
end