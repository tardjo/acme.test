class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.float :total_payment
      t.integer :total_view

      t.timestamps null: false
    end
  end
end
