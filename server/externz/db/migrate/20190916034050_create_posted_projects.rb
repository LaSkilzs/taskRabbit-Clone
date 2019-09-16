class CreatePostedProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :posted_projects do |t|
      t.references :project, foreign_key: true
      t.references :business, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
