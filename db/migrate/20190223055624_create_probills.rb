class CreateProbills < ActiveRecord::Migration[5.2]
  def change
    create_table :probills do |t|
      t.string :shipper
      t.string :paying_customer
      t.string :total_weight
      t.string :division
      t.string :subdivision
      t.text :notes
      t.timestamps
    end
  end
end
