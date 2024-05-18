class Avo::Resources::CourseChapter < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :title, as: :text
    field :content, as: :textarea
    field :course_module, as: :belongs_to
  end
end
