class StudentSkill < ApplicationRecord
  belongs_to :student
  belongs_to :skill
  enum level: {beginner: "beginner", intermediate: "intermediate", advance: "advance", expert: "expert"}

end
