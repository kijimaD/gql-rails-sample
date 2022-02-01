module Types
  class MutationType < Types::BaseObject
    field :updatePost, mutation: Mutations::UpdatePost
    field :createPost, mutation: Mutations::CreatePost
  end
end
