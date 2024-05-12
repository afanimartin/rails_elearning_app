class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.text :bio
      t.string :name
      t.string :phone
      t.references :address, null: false, foreign_key: true
      t.references :catgegory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
