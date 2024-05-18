class CreateCourseModules < ActiveRecord::Migration[7.0]
  def change
    create_table :course_modules, id: false do |t|
      t.string :id, primary_key: true
      t.string :title
      t.references :course, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
