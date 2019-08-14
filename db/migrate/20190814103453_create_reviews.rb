class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review_description
      t.references :user, foreign_key: { to_table: :users}
      t.references :book, foreign_key: { to_table: :books}

      t.timestamps
    end
  end
end
