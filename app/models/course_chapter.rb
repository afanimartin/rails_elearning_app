class CourseChapter < ApplicationRecord
  include UniqueId
  self.primary_key = :id 
  before_create :generate_unique_id
  
  belongs_to :course_module
end
