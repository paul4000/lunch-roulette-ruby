class RandomsController < ApplicationController

  def index

  end

  def filter

  end

  def send_shopping_list
    @user = current_user
    RecipeMailer.recipe_email(@user, params[:recipe]).deliver

    flash[:notice] = "Shopping list sent!"

  end

  def random

    @recipe = current_user.recipes.sample

    respond_to do |format|
      format.js
    end
  end

  # helper_method :send_shopping_list

end
