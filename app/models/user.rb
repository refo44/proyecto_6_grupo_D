class User < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :name, uniqueness: true
end
