# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :name, String

    field :book_count, Integer, null: false
    field :books, [Types::BookType], null: false
    field :chapters, [Types::ChapterType], null: false

    def book_count
      object.books.count
    end


    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
