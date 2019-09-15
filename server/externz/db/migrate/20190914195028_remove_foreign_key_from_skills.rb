class RemoveForeignKeyFromSkills < ActiveRecord::Migration[5.2]
  def change
    remove_reference :skills, :skill_categories, index: true
  end
end
