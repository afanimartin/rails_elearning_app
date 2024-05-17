class Avo::Resources::School < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :bio, as: :textarea
    field :name, as: :text
    field :phone, as: :text
    field :address_id, as: :text
    field :category_id, as: :text
    field :address, as: :belongs_to
    field :category, as: :belongs_to
    field :users, as: :has_many
  end
end
