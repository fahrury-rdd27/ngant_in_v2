class Menu < ApplicationRecord
	belongs_to :warung
	has_one_attached :image
	validates :image, presence: true
	validates :nama, presence: true
	validates :harga, presence: true
end
