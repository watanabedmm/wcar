class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|

      t.timestamps
    end
  end
end
