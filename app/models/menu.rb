class Menu < ApplicationRecord
	belongs_to :warung
	has_one_attached :image
end
