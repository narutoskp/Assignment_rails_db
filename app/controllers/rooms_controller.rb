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

	def edit
  		@room = Room.find(params[:id])
	end

	def create
  		@room = Room.new(room_params)
 
  		@room.save
  		redirect_to @room
	end

	def update
		@room = Room.find(params[:id])
 
  		@room.update(room_params)
    	redirect_to @room
	end

	def destroy
    	@room = Room.find(params[:id])
    	@room.destroy
 
    	redirect_to rooms_path
  	end
 
	private
  		def room_params
    		params.require(:room).permit(:room)
  		end
end
