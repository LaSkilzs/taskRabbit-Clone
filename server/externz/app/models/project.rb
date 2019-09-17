class Project < ApplicationRecord
  belongs_to :business
  has_many :posted_projects
  has_many :students, through: :posted_projects
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_many :project_tasks
  has_many :tasks, through: :project_tasks
  enum duration: {a_day: "a_day", two_days: "two_days", three_days: "three_day", four_days: "four_days"}
  enum status: {pending: "pending", open: "open", closed: "closed"}
end
