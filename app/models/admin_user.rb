class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :topics, dependent: :destroy
  has_many :questions, through: :topics
  has_many :tests, dependent: :destroy

  enum :role, { user: 0, admin: 1 }
end
