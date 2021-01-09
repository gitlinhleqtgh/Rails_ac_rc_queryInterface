class Supplier < ApplicationRecord
    has_many :books, class_name: "book", foreign_key: "reference_id"
    has_many :authors, class_name: "author", foreign_key: "reference_id", through: :books
end
