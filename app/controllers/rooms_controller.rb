class RoomsController < ApplicationController

	def index
		@room = Room.all
		
	end

	def show
		@room = Room.find(params[:id])	
	end

	def new
		@room = Room.new		
	end

	def create
  		@room = Room.new(room_params)
 
  		@room.save
  		redirect_to @room
	end
 
	private
  		def room_params
    		params.require(:room).permit(:room)
  		end
end
