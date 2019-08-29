class CreateCarItems < ActiveRecord::Migration[5.2]
  def change
    create_table :car_items do |t|
    	t.string :year
    	t.integer :distance
    	t.string :inspection
      t.string :color
    	t.string :price
    	t.string :image_id
    	t.integer :grade_id
      t.integer :car_id
      t.integer :equipment_id
      t.integer :maker_id
      t.timestamps
    end
  end
end