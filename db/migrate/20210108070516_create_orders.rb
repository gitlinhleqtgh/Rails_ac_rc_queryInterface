class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :customer, class_name: "customer", foreign_key: "customer_id"
      t.time :date_submitted
      t.integer :status
      t.decimal :subtotal
      t.decimal :shipping
      t.decimal :tax
      t.decimal :total

      t.timestamps
    end
  end
end
