class WeightGoal < ApplicationRecord
  belongs_to :user
  has_many :weights

  validates :user_id , presence: true, uniqueness: { message: 'はすでにデータが存在しています マイページのカレンダーから編集してください' }
  validates :goal, presence: true, numericality: { only_integer: true }
end



