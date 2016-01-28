class EmployeesController < ApplicationController

  def new
  		@employee = Employee.new
  end

  def show
      
  end	

  def create
    @room = Room.find(params[:room_id])
    @employee = @room.employees.create(employee_params)
    redirect_to room_path(@room)
  end
 
  private
    def employee_params
      params.require(:employee).permit(:nameEm)
    end
end
