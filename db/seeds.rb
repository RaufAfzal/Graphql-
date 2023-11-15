# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
2.times do
    author = Author.create(name: Faker::Name.name, email: Faker::Internet.email)

    3.times do
        book = author.books.create(name: Faker::Lorem.sentence(word_count:2), description: Faker::Lorem.paragraph(sentence_count:2))

        2.times do
            book.chapters.create(name: Faker::Lorem.sentence(word_count: 2), short_description: Faker::Lorem.paragraph(sentence_count: 2))
        end
    end
end