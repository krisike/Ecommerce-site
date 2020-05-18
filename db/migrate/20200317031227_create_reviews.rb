class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :raiting
      t.text :comment
      t.belongs_to :user
      t.belongs_to :product

      t.timestamps
    end
  end
end
