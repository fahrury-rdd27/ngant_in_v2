class Warung < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :foto
  validates :foto, presence: true
  validates :nama, presence: true
  validates :alamat, presence: true
  has_many :menus
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
