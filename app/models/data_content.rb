class DataContent < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '体重' },
    { id: 3, name: '体脂肪率' },
    { id: 4, name: '運動量' },
    { id: 5, name: 'カロリー' },
    { id: 6, name: '糖質' },
    { id: 7, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :body_conditions
  end