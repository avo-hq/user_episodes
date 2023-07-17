class UserResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :link, as: :text, format_using: -> {
    link_to "podcasts", "/avo/user_episodes/#{resource.model.id}"
  }
  # add fields here
end
