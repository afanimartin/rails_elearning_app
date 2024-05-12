class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :completed, :boolean, null: false, default: false
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
  end
end
