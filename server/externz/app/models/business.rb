class Business < ApplicationRecord
  belongs_to :industry
  belongs_to :user
  has_many :projects 
end

