class AddColumnToSkills < ActiveRecord::Migration[5.2]
  def change
    add_reference :skills, :skill_categories, foreign_key: true
  end
end
