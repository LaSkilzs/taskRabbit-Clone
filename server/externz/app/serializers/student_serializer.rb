class StudentSerializer < ActiveModel::Serializer
  attributes :id,:fname, :mname, :lname,:phone, :street, :city, :state, :zip, :degree, :major, :image, :user_id
  
  has_many :skills, through: :student_skills
  has_many :projects, through: :posted_projects
end
