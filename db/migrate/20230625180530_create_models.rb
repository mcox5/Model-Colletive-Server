class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.string :last_name
      t.string :phone_number
      t.string :location
      t.integer :rating
      t.string :eye_color
      t.float :weight
      t.float :height
      t.float :hips
      t.float :bust

      t.timestamps
    end
  end
end
