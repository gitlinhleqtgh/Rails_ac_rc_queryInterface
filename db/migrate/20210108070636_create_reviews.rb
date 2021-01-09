class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :customer, class_name: "customer", foreign_key: "customer_id"
      t.string :title
      t.text :body
      t.integer :rating
      t.integer :state

      t.timestamps
    end
  end
end
