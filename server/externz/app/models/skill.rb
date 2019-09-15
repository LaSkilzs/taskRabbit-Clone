class Skill < ApplicationRecord
  belongs_to :category
  has_many :student_skills
  has_many :students, through: :student_skills
end
