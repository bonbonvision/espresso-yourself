class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end

  def new 
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to root_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :espresso_yourself, :author)
  end
end
