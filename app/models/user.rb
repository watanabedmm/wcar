class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :enquiry

	validates :name_first, presence: true
	validates :name_last, presence: true
	validates :post_code, presence: true
	validates :phone, presence: true
	validates :address, presence: true
end
