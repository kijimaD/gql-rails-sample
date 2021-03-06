module Mutations
  class DeletePost < BaseMutation
    graphql_name 'DeletePost'

    field :post, Types::PostType, null: false
    field :result, Boolean, null: true

    argument :id, ID, required: true

    def resolve(**args)
      post = Post.find(args[:id])
      post.destroy!
      {
        post: post,
        result: post.errors.blank?
      }
    end

    mutation {
      deletePost(
        input: {
          id: 1
        }
      ){
        post {
          id
          title
          description
        }
      }
    }
  end
end
