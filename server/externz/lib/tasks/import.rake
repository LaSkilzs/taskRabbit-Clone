require 'csv'
require 'byebug'

namespace :import do

  desc "import users from csv"
  task users: :environment do
    filename = File.join Rails.root, "db/csv/users.csv"

    CSV.foreach(filename, headers: true) do |row|

      User.create(email: row['email'], password: row['password'], role: row['role'])
    end
  end

  desc "import students from csv"
  task students: :environment do
    filename = File.join Rails.root, "db/csv/students.csv"

    CSV.foreach(filename, headers: true) do |row|
      Student.create(fname: row['fname'],mname: row['mname'],lname: row['lname'], street: row['street'], city: row['city'], state: row['state'], zip: row['zip'], phone: row['phone'],  major: row['major'], education: row['education'], degree: row['degree'], image: row['image'], user_id: row['user_id'])
    end
  end

  desc "import categories from csv"
  task  categories: :environment do
    filename = File.join Rails.root, "db/csv/categories.csv"

    CSV.foreach(filename, headers: true) do |row|
      Category.create(name: row['name'])
    end
  end

  desc "import skills from csv"
  task skills: :environment do
    filename = File.join Rails.root, "db/csv/skills.csv"

    CSV.foreach(filename, headers: true) do |row|
      Skill.create(name: row["name"], category_id: row['category_id'])
    end
  end

  desc "import student_skills from csv"
  task student_skills: :environment do
    filename = File.join Rails.root, "db/csv/student_skills.csv"

    CSV.foreach(filename, headers: true) do |row|

      StudentSkill.create(level: row['level'], student_id: row['student_id'], skill_id: row["skill_id"])
    end
  end

  

end
