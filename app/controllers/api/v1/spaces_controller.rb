class Api::V1::SpacesController < ApplicationController
  def show
    space = Space.find(params[:id])
   
    render json: space
  end
end