class EmployeesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    wrap_parameters format:[]

    # def new
    #     employee = Employee.new
    # end

    def index
        employees = Employee.all
        render json: employees, status: :ok
    end
    def create
        # employee=Employee.new(employee_params)
        employee = Employee.create!(employee_params)
        # if @employee.save
        session[:employee_id] = employee.id
        render json: employee, status: :created
        #   redirect_to root_path, notice: "Successfully created account!"
        # else
        #     render :new
        # end
    end
    def show
        # return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :employee_id
        employee = Employee.find_by(id:session[:employee_id])
            render json: employee, status: :ok
        
    end
    private
    def employee_params
        params.permit(:username, :email, :password)
    end
    def render_unprocessable_entity(e)
        render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end
    
end
