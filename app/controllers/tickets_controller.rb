class TicketsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response 
     def index
        render json: Ticket.all, status: :ok
     end
    def create
        ticket = Ticket.create(ticket_params)
         render json: ticket, status: :created   
     end
     def show
        ticket = Ticket.find_by(id: params[:id])
        if ticket
            render json: ticket
        else
            render json: { error: "Ticket not found" }, status: :not_found   
        end
     end
     def destroy

     end
     def update
        ticket = Ticket.find_by(id: params[:id])
        if ticket
            ticket.update!(ticket_params)
            render json: ticket
        else
            render json: { error: "Ticket not found" }, status: :not_found
        end
      end
      def destroy
        ticket= Ticket.find_by(id: params[:id])
        if ticket
          ticket.destroy
          head :no_content
        else
         render json: {error: "restaurant not found"}, status: :not_found
        end
      end
  
    private
    def ticket_params
        params.permit(:name, :department_id, :phone_no, :summary, :description, :category_id, :priority, :status)
    end
  def render_unproccessable_entity_response(error)
    render json: { errors: error.record.errors.full_messages }, status: :unprocessable_entity
    end
end
