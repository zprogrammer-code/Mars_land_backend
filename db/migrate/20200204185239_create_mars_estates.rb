class CreateMarsEstates < ActiveRecord::Migration[6.0]
  def change
    create_table :mars_estates do |t|
      t.float :price
      t.string :title
      t.string :img

      t.timestamps
    end
  end
end
