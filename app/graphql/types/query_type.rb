# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    # /author
    field :authors, [Types::AuthorType], null: true

    field :author, Types::AuthorType , null: false do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end

    def authors
      Author.all
    end
  
  end
end
