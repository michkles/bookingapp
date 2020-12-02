class Booking < ApplicationRecord
    belongs_to :space
    validates :start_date, :end_date, presence: true
end
