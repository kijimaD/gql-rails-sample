module Types
  class MutationType < Types::BaseObject
    field :update_post, mutation: Mutations::UpdatePost
    field :createPost, mutation: Mutations::CreatePost
  end
end
