class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :state
      t.string :postal
      t.integer :phone_1
      t.integer :phone_2
      t.float :xcord
      t.float :ycord
      t.text :notes
      t.timestamps
    end
  end
end
