class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :transactions, dependent: :destroy

  validates :name, presense: true
end
