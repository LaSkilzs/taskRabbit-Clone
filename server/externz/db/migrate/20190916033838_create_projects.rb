class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :duration
      t.string :rate
      t.date :start
      t.string :image
      t.string :status

      t.timestamps
    end
  end
end
