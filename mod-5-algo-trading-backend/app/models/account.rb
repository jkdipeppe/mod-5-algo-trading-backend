class Account < ApplicationRecord
  has_secure_password
  has_many :positions
  has_many :orders
  has_many :algorithms
end
