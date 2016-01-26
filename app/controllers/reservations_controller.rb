class ReservationsController < ApplicationController

	def index
		@reservation = Reservation.all
		
	end

	def new
		@reservation = Reservation.new
	end

	def edit
  		@reservation = Reservation.find(params[:id])
	end

	def create
  		@reservation = Reservation.new(reservation_params)
 
  		@reservation.save
  		redirect_to @reservation
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])
 
  		@reservation.update(reservation_params)
    	redirect_to @reservation
	end

	def destroy
    	@reservation = Reservation.find(params[:id])
    	@reservation.destroy
 
    	redirect_to reservations_path
  	end

	private
  		def reservation_params
    		params.require(:reservation).permit(:roomRes, :time)
  		end
end
