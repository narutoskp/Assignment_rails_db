class ReservationsController < ApplicationController

	def new
		@reservation = Reservation.new
	end

	def create
  		@reservation = Reservation.new(reservation_params)
 
  		@reservation.save
  		redirect_to @reservation
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	private
  		def reservation_params
    		params.require(:reservation).permit(:roomRes)
  		end
end
