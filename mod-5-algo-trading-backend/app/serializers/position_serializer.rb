class PositionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :quantity, :trading_pai
  belongs_to :account
end
