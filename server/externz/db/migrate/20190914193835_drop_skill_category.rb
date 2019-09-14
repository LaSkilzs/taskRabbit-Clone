class DropSkillCategory < ActiveRecord::Migration[5.2]
  def change
    drop_table :skill_categories, force: :cascade
  end
end
