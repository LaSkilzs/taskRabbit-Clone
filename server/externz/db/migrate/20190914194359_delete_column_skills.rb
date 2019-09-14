class DeleteColumnSkills < ActiveRecord::Migration[5.2]
  def change
    remove_reference  :skills, :skill_categories_id, :index => true
  end
end
