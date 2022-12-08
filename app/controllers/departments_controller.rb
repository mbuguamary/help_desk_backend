class DepartmentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response 
    def index
        render json: Department.all, status: :ok
    end

    def create
        department = Department.create(dept_params)
        render json: department, status: :created
    end

    private
     def dept_params
        params.permit(:department_name)
     end
    def render_unproccessable_entity_response(error)
        render json: { errors: error.record.errors.full_messages }, status: :unprocessable_entity
        end
end
