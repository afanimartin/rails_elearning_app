class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses, id: false do |t|
      t.string :id, primary_key: true
      t.string :name
      t.text :description
      t.integer :credit_hours
      t.references :school, type: :string, null: false, foreign_key: true
      t.references :user, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
