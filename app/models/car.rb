class Car < ApplicationRecord
has_many :grades
belongs_to :maker
accepts_nested_attributes_for :grades, allow_destroy: true

end
