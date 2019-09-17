class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration, :rate, :image, :status, :business_id

  has_many :skills, through: :project_skills
  has_many :tasks, through: :project_tasks
  belongs_to :business
end
