class RecipeMailer < ApplicationMailer
  default from: 'lunch.roulette.manager@gmail.com'

  def recipe_email(user, recipe)
    @user = user
    @recipe = recipe

    mail(to: user.email, subject: recipe.title)

  end
end
