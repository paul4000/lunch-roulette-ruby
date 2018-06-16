class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps
  belongs_to :user
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :steps

end
