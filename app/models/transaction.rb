class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presense: true
  validates :amount, presense: true, numericality: { greater_than_or_equal_to: 0 }
end
