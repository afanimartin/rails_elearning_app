class AddSchoolToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :school, type: :string, null: false, foreign_key: true
  end
end
