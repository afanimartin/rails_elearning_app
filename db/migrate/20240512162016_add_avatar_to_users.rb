class AddAvatarToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :string, null: false, default: "https://res.cloudinary.com/dmyhendcr/image/upload/v1715530751/user-blue_sjp9fn.png"
  end
end
