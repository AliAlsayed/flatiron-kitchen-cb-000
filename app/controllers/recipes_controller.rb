class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
  end

  private

    def recipe_params
      params.require(:recipe).permit(:name)
    end
end
