class Book < ApplicationRecord
    belongs_to :supplier
    belongs_to :author
    has_many :reviews
    has_and_belongs_to_many :orders, join_table: 'book_orders'
    
    scope :in_print, -> { where(:out_of_print => false)}
    # Ex:- scope :active, -> {where(:active => true)}
    scope :out_of_print, -> { where(:out_of_print => true)}
    # Ex:- scope :active, -> {where(:active => true)}
    scope :old, -> { where('year_published < ?' => 50.years.ago)}
    # Ex:- scope :active, -> {where(:active => true)}
    scope :out_of_print_and_expensive, -> { out_of_print.where('price > 500')}
    # Ex:- scope :active, -> {where(:active => true)}
    scope :costs_more_than, ->(amount) { where('price > ?' => amount)}
    # Ex:- scope :active, -> {where(:active => true)}
end
