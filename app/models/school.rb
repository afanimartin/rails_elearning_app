class School < ApplicationRecord
  include UniqueId
  self.primary_key = :id 
  before_create :generate_unique_id
  
  belongs_to :address
  belongs_to :category
  has_many :users
end
