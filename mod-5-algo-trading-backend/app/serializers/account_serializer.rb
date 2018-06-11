class AccountSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email
  has_many :positions
  has_many :orders
  has_many :algorithms

end
