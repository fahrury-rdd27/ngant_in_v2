class Warung < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :foto
  has_many :menus
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
