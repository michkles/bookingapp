class Space < ApplicationRecord
    has_many :bookings
    validates :name, presence: true
end
