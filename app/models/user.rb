class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable, :lockable, :timeoutable, :trackable
  
  include UniqueId
  self.primary_key = :id 
  before_create :generate_unique_id

  belongs_to :school

  enum role: { student: 0, teacher: 1, admin: 2, school_admin: 3 }
end
