class BodyfatGoal < ApplicationRecord
  belongs_to :user
  has_many :bodyfats

  validates :user_id , presence: true, uniqueness: { message: 'はすでにデータが存在しています マイページのカレンダーから編集してください' }
  validates :goal, presence: true, numericality: { only_integer: true }
end
