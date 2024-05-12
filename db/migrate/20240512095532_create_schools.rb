class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.text :bio
      t.string :name
      t.string :phone
      t.references :address, type: :string, null: false, foreign_key: true
      t.references :category, type: :string, null: false, foreign_key: true

      t.timestamps
    end
  end
end
