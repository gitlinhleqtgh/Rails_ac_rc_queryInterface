class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.belongs_to :supplier, class_name: "supplier", foreign_key: "supplier_id"
      t.belongs_to :author, class_name: "author", foreign_key: "author_id"
 #     t.belongs_to :review, class_name: "review", foreign_key: "review_id"
      t.string :title
      t.integer :year_published
      t.string :isbn
      t.decimal :price
      t.boolean :out_of_print

      t.timestamps
    end
  end
end
