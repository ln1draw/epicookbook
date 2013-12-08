class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :cook_time
      t.integer :prep_time
      t.string :name
      t.text :description
      t.text :steps
      t.integer :rating

      t.timestamps
    end
  end
end
