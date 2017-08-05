class RecipesController < ApplicationController
  
  def index
  end

  def new 
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe, :espresso_yourself, :author)
  end
end
