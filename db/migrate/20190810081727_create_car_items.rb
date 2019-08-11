class CreateCarItems < ActiveRecord::Migration[5.2]
  def change
    create_table :car_items do |t|
    	t.integer :year
    	t.integer :distance
    	t.integer :inspection
      	t.string :color
    	t.integer :price
    	t.string :image_id
    	t.string :grade_id
      t.timestamps
    end
  end
end