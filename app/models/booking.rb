class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :user
  # has_many :reviews, dependent: :destroy
  has_one :service, through: :timeslot
  belongs_to :service
  has_one :review, dependent: :destroy

  STATUS = ["Confirmed", "Completed", "Pending", "Cancelled", "On-going"].freeze
  DURATION = [60, 90, 120, 180, 240, 480].freeze
end
