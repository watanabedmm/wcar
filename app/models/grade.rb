class Grade < ApplicationRecord
belongs_to :car
has_many :car_items
has_many :equipments
#accepts_nested_attributes_for :car_items, allow_destroy: true
accepts_nested_attributes_for :car_items, reject_if: :all_blank, allow_destroy: true

enum  shift:[:"AT",:"MT"]
end
