class CreateUserMarsEstates < ActiveRecord::Migration[6.0]
  def change
    create_table :user_mars_estates do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mars_estate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
