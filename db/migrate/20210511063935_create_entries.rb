class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.float :current_weight
      t.string :meal_type
      t.integer :calories
      t.integer :carbohydrates
      t.integer :fats
      t.integer :proteins
      t.date :current_date

      t.timestamps
    end
  end
end
