class CreateBookOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :book_orders do |t|
      t.belongs_to :order, class_name: "order", foreign_key: "order_id"
      t.belongs_to :book, class_name: "book", foreign_key: "book_id"


      t.timestamps
    end
  end
end
