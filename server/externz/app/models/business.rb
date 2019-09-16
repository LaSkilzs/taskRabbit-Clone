class Business < ApplicationRecord
  belongs_to :industry
  belongs_to :user
  has_many :posted_projects
  has_many :projects, through: :posted_projects
end

