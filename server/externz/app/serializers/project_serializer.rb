class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration, :rate, :image, :status
end
