class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.text :title
      t.text :recipe
      t.text :espresso_yourself
      t.text :author
      t.timestamps
    end
  end
end
