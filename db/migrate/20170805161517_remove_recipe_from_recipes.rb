class RemoveRecipeFromRecipes < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :recipe, :text
  end
end
