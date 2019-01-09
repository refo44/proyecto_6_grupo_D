class MeetingRoom < ApplicationRecord
  has_many :reservations

  validates :name, uniqueness: true
end
