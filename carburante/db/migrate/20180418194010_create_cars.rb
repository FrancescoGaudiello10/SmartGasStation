class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|

      t.belongs_to :user
      t.integer   :user_id
      t.string    :modello
      t.string    :targa
      t.integer   :capacita_serbatoio
      t.string    :tipo_carburante

      t.timestamps
    end
      add_index :cars, :user_id
  end
end