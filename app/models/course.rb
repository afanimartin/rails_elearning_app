class Course < ApplicationRecord
  include UniqueId
  self.primary_key = :id 
  before_create :generate_unique_id

  belongs_to :school
  has_many :course_modules
  belongs_to :instructor, class_name: 'User'

  validates :name, presence: true, uniqueness: { scope: :school_id }
  validates :credit_hours, presence: true
end
