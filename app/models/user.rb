class User < ApplicationRecord
  has_secure_password
  has_many :recipes

  validates :name, presence: true
  validates :email, :email_format => {:message => 'Wrong format email'}
  validates :email, uniqueness: true

end
