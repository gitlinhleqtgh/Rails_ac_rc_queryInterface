class ChangeBook < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :review_id
  end
end
