class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end  

  def index
    @employees = Employee.all
    render json: { my_test_deploy_employee: @employees }
  end  

  def create
    @employee = Employee.new(employee_params)
    # debugger
    if @employee.save
    #   render json: @employee, status: :created
      render json: { employee: @employee }

    else
        render json: { employee: Employee.last }

      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email, :company_id, :other_attributes)
  end
end
