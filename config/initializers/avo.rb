# config/initializers/avo.rb
Avo.configure do |config|
  config.resources = [
    "Avo::Resources::User",
    "Avo::Resources::School",
    "Avo::Resources::Address",
    "Avo::Resources::Category",
    "Avo::Resources::Course",
    "Avo::Resources::CourseModule",
    "Avo::Resources::CourseChapter",
  ]
end