class Book < ApplicationRecord
  belongs_to :author
  has_many :chapters, dependent: :destroy
end
