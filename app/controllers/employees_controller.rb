class EmployeesController < ApplicationController

  def new
  		@employee = Employee.new
  end	

  def create
    @room = Room.find(params[:article_id])
    @employee = @room.Employee.new(employee_params)
    redirect_to room_path(@room)
  end
 
  private
    def employee_params
      params.require(:employee).permit(:nameEm)
    end
end
