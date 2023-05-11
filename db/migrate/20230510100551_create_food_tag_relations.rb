class CreateFoodTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :food_tag_relations do |t|
      t.references :food, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
