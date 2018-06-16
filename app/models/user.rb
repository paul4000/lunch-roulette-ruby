class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, :email_format => {:message => 'Wrong format email'}
  validates :email, presence: true
  validates :email, uniqueness: true

end
