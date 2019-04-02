class EmployeesController < ApplicationController

    def index
      @library=Library.find(params[:library_id])
      @employees=@library.employees
      #@employees = Employee.all
    end

    def create
      @library=Library.find(params[:library_id])
      @employee=@library.employees.create(employee_params)

     # if @employee.save
       # redirect_to employee_path(@employee)
      #else
       # render "new"
      #end
    end

    def new
       #@library=Library.find(params[:library_id])
      # @employee=@library.employees.new
    end

    def show
      @library=Library.find(params[:library_id])
      @employee=@library.employees.find(params[:id])

      #unless @employee=Employee.find(params[:employee][:library_id])

       # render text: "Page not found"
     # end
    end

    def edit
      @employee=Employee.find(params[:id])
    end

    def update
      @employee=Employee.find(params[:id])
      @employee.update_attributes(employee_params)
      #if @employee.errors.empty?
      ## redirect_to employee_path(@employee)
     # else
      ##  render "edit"
     # end
    end


    private

    def employee_params
      params.require(:employee).permit(:surname, :name, :patronymic, :date_of_birth, :date_of_employment, :position, :education)
    end
  end


