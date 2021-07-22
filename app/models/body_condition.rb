class BodyCondition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :data_content
  belongs_to :user

  
  validates :start_time, presence: true, uniqueness: { scope: :data_content_id, message: 'はすでにデータが存在しています マイページのカレンダーから編集してください' }
  validates :data_content_id, numericality: { other_than: 1, message:'を選択して下さい' }
  validates :body_data, presence: true,
  numericality: { only_integer: true }
end
