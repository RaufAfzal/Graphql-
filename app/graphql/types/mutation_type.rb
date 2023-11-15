# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_author, mutation: Mutations::CreateAuthor
    field :update_author, mutation: Mutations::UpdateAuthor
    field :delete_author, mutation: Mutations::DeleteAuthor
  end
end
