class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :cost, :float
      t.column :country, :string

      t.timestamps
    end
  end
end
