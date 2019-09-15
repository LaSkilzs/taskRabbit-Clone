class ChangeColumnStudentSkills < ActiveRecord::Migration[5.2]
  def change
    change_column :student_skills, :level, :string, :default => "beginner"
  end
end
