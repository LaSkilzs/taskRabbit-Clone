class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :tagline
      t.string :description
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.references :industry, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
