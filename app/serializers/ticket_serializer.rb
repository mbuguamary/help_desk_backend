class TicketSerializer < ActiveModel::Serializer
  attributes :id, :name, :department_id, :phone_no, :summary, :description, :category_id, :priority, :status, :created_at, :updated_at
end
