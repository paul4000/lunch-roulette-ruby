class Step < ApplicationRecord
  belongs_to :recipe, optional: true
  auto_increment :order_number
end
