class Task < ApplicationRecord
  has_many :project_tasks
  has_many :project, through: :project_tasks
end
