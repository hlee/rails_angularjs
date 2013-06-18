class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :amount
      t.string :amount_units
      t.string :ingredient_name
      t.integer :recipe_id

      t.timestamps
    end
  end
end
