class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    fail
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

    def recipe_params
      params.require(:recipe).permit(:name, ingredient_ids: [])
    end
end
