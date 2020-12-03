class Api::V1::BookingsController < ApplicationController
  def index
    if params['space_id'].present?
      filtered_bookings = Booking.where(space_id: params['space_id'])
    
      render json: filtered_bookings
    else
      bookings = Booking.all

      render json: bookings
    end
  end 
end