class Avo::Resources::User < Avo::BaseResource
  self.includes = []
  self.title = :email

  def fields
    field :id, as: :id
    field :email, as: :text
    field :first_name, as: :text
    field :last_name, as: :text
    field :sign_in_count, as: :number
    field :current_sign_in_at, as: :date_time
    field :last_sign_in_at, as: :date_time
    field :current_sign_in_ip, as: :text
    field :last_sign_in_ip, as: :text
    field :confirmation_token, as: :text
    field :confirmed_at, as: :date_time
    field :confirmation_sent_at, as: :date_time
    field :unconfirmed_email, as: :text
    field :failed_attempts, as: :number
    field :unlock_token, as: :text
    field :locked_at, as: :date_time
    field :role, as: :select, enum: ::User.roles
    field :completed, as: :boolean
    field :gender, as: :text
    field :date_of_birth, as: :date
    field :school_id, as: :text
    field :avatar, as: :text
    field :phone, as: :text
    field :bio, as: :textarea
    field :school, as: :belongs_to
  end
end
