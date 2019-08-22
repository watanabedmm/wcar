class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
    	t.string :name
    	t.integer :displacement
    	t.integer :fixed_number
    	t.integer :doortype
    	t.integer :car_id
      t.timestamps
      t.string :shift
    end
  end
end
