class CategoriesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response    
    def index
        render json: Category.all, status: :ok
    end
    def create 
        category = Category.create!(cat_params)
        render json: category, status: :ok
    end
    private
 def cat_params
    params.permit(:category_name)
 end
 def render_unproccessable_entity_response(error)
    render json: { errors: error.record.errors.full_messages }, status: :unprocessable_entity
    end
end
