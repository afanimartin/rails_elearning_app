class Address < ApplicationRecord
  has_many :schools

  include UniqueId
  self.primary_key = :id 
  before_create :generate_unique_id
end
