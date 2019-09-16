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

  desc "import businesses from csv"
  task businesses: :environment do
    filename = File.join Rails.root, "db/csv/businesses.csv"

    CSV.foreach(filename, headers: true) do |row|

      Business.create(name: row['name'],description: row['description'],tagline: row['tagline'], street: row['street'], city: row['city'], state: row['state'], zip: row['zip'], industry_id: row['industry_id'], user_id: row['user_id'])
    end
  end

  desc "import industries from csv"
  task industries: :environment do
    filename = File.join Rails.root, "db/csv/industries.csv"

    CSV.foreach(filename, headers: true) do |row|

      Industry.create(name: row['name'])
    end
  end

  desc "import projects from csv"
  task projects: :environment do
    filename = File.join Rails.root, "db/csv/projects.csv"

    CSV.foreach(filename, headers: true) do |row|
      Project.create(name: row['name'], description: row['description'], duration: row["duration"], rate: row["rate"].to_i, start: row["start"], image: row["image"],status: row["status"])
    end
  end

  

end
