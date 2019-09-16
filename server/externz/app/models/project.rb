class Project < ApplicationRecord
  has_many :posted_projects
  has_many :businesses, through: :posted_projects
  has_many :project_skills
  has_many :skills, through: :project_skills
  enum duration: {a_day: "a_day", two_days: "two_days", three_days: "three_day", four_days: "four_days"}
  enum status: {pending: "pending", open: "open", closed: "closed"}
end
