class Grade < ApplicationRecord
belongs_to :car
has_many :car_items

enum  shift:[:"AT",:"MT"]
end
