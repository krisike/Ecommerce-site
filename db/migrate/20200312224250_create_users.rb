class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :street_address

      t.timestamps
    end
  end
end
