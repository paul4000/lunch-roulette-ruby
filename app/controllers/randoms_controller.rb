class RandomsController < ApplicationController
  load_and_authorize_resource

  def index

  end

  def filter

  end

  def send_shopping_list
    @user = current_user

    recipe = Recipe.find(params[:recipe_id])

    RecipeMailer.recipe_email(@user, recipe).deliver!

    flash.now[:notice] = 'Message sent!'

  end

  def random

    @recipe = current_user.recipes.sample

    respond_to do |format|
      format.js
    end
  end

  # helper_method :send_shopping_list

end
