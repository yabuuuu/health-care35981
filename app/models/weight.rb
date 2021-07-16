class Weight < ApplicationRecord
  belongs_to :user

  validates :start_time , presence: true, uniqueness: { message: 'すでにデータが存在しています マイページのカレンダーから編集してください' }
  validates :weight, presence: true, numericality: { only_integer: true }
end
