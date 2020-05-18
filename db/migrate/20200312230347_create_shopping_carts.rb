class CreateShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_carts do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: true

      t.timestamps
    end
  end
end
