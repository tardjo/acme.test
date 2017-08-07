class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :object_key
      t.string :object_value

      t.timestamps null: false
    end
  end
end
