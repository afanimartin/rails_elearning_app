class CreateCourseChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :course_chapters, id: false do |t|
      t.string :id, primary_key: true
      t.string :title
      t.text :content
      t.references :course_module, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
