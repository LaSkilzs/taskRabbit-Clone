class RemoveForeignKeyReferenceFromPostedProjects < ActiveRecord::Migration[5.2]
  def change
    remove_reference :posted_projects, :business, foreign_key: true
  end
end
