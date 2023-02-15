class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end

  def update
    @recipe = Recipe.find(params[:id])
    require 'pry'; binding.pry
    @recipe.update(recipe_params)
    require 'pry'; binding.pry
    redirect_to "/recipes/#{@recipe.id}"
  end

private

  def recipe_params
    params.permit(:ingredient_id)
  end
end