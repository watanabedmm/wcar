class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
    	t.string :name
    	t.boolean :is_japan , default:0
      t.timestamps
    end
  end
end
