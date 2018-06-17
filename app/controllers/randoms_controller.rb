class RandomsController < ApplicationController

  def index

  end

  def filter

  end

  def random

    @recipe = current_user.recipes.sample

    respond_to do |format|
      format.js
    end
  end
end
