class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable, :lockable, :timeoutable, :trackable
  
  include UniqueId
  self.primary_key = :id 
  before_create :generate_unique_id
end
