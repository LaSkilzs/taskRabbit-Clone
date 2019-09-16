class PostedProject < ApplicationRecord
  belongs_to :project
  belongs_to :business
  belongs_to :student
end
