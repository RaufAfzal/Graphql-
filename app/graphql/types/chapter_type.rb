# frozen_string_literal: true

module Types
  class ChapterType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :short_description, String
    field :book_id, Integer, null: false

    field :author_name, String, null: false

    def author_name
      object.book.author.name
    end


    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
