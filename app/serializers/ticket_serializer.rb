class TicketSerializer < ActiveModel::Serializer
  attributes :id, :summary, :name, :priority, :status, :created_at, :updated_at
end
