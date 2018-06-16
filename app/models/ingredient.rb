class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :unit, :inclusion => { :in => %w(kilo teaspoon liter pinch),
                                   :message => "%{value} is not a valid unit" }
end
