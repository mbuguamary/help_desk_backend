class TicketSerializer < ActiveModel::Serializer
  attributes :id, :summary, :creator, :priority, :status,:created, :updated
end
