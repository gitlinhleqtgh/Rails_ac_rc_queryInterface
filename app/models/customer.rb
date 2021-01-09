class Customer < ApplicationRecord
    has_many :orders, class_name: "order", foreign_key: "reference_id"
    has_many :reviews, class_name: "review", foreign_key: "reference_id"
end
