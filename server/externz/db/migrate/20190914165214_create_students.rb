class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :major
      t.string :education
      t.boolean :degree
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
