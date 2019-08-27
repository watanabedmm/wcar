class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
    	t.string :name
    	t.integer :maker_id
    	t.integer :grade_id
      t.timestamps
    end
  end
end
