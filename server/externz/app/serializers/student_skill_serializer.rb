class StudentSkillSerializer < ActiveModel::Serializer
  attributes :id, :level, :student_id, :skill_id
end
