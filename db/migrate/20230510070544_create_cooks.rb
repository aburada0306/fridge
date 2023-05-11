class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|
      t.string :name, null:false,uniqueness: true
      t.timestamps
    end
  end
end
