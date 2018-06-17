class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps
  belongs_to :user
  accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc { |i| i['name'].blank? }
  accepts_nested_attributes_for :steps, allow_destroy: true, reject_if: proc { |i| i['description'].blank? }
  validates :title, presence: true, allow_blank: false

end
