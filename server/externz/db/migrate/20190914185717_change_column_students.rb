class ChangeColumnStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :degree, :boolean, :default => false
    change_column :students, :major, :string, :default => "none"
    change_column :students, :image, :string, :default => "https://southwoods.com/assets/img/profiles/fake1.png"
  end
end
