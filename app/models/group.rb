class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, presense: true
  validates :icon, presense: true

  def sum_total
    transactions.sum(:amount)
  end
end
