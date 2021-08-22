class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
  has_many :weights
  has_one :weight_goal
  has_many :body_conditions
  has_one :bodyfat_goal

  validates :password, format: { with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-z\d]+\z/i }

  with_options presence: true do
    validates :nickname
    validates :birthday
  end
end
