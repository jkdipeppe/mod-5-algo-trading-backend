class OrderSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :quantity, :price, :limit, :trading_pair
  belongs_to :account
end
