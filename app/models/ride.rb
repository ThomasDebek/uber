class Ride < ApplicationRecord
  belongs_to :customer
  enum status: [:pending, :in_progress, :completed, :cancelled]
end
