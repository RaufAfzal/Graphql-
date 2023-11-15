class Mutations::DeleteAuthor < Mutations::BaseMutation
  description "Delete Author"

  argument :id, ID, required: true

  field :author, Types::AuthorType, null: false
  field :errors, [String], null: false

  def resolve(id:)
    author = Author.find(id)

    if author.destroy
      { author: author, errors: [] }
    else
      { author: nil, errors: author.errors.full_messages }
    end
  end
end

