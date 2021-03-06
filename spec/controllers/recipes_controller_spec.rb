require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe "recipes#index action" do 
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "recipes#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "recipes#create action" do
    it "should successfully create a recipe in the database" do
      post :create, params: { recipe: { title: 'Coffee'} }
      expect(response).to redirect_to root_path
      recipe = Recipe.last
      expect(recipe.title).to eq("Coffee")
    end
  end
end
