class User < ApplicationRecord
  has_secure_password
  has_many :students
  enum role: {student: "student", business: "business", admin: "admin"}

end
