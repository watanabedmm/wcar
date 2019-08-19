class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
    	t.string :name ,null: false
    	t.boolean :is_japan ,null: false
      t.timestamps
    end
  end
end
