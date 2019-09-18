class Student < ApplicationRecord
  belongs_to :user
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :posted_projects
  has_many :projects, through: :posted_projects
end
