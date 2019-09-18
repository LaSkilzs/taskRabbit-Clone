class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tagline, :street, :city, :state, :zip, :user_id, :industry_id
  has_many :projects
end
