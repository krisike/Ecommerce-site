class CreateProductVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :product_variants do |t|
      t.references :size, foreign_key: true
      t.references :color, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
