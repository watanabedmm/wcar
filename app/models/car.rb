class Car < ApplicationRecord
has_many :grades
has_many :car_items
belongs_to :maker



end
