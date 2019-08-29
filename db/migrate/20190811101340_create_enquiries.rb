class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.string :number
      t.integer :user_id
      t.string :area
      t.string :comment
      t.string :mycar_maker
      t.string :mycar_name
      t.string :mycar_distance
      t.string :mycar_year
      t.string :insurance_select
      t.timestamps
    end
  end
end

