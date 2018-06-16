class AddIngredientsAndStepsToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_reference :ingredients, :recipe, index: true, foreign_key: true
    add_reference :steps, :recipe, index: true, foreign_key: true
  end
end
