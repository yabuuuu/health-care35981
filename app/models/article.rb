class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :article, :image,  :text,  presence: true

  def self.search(search)
    if search != ""
      Article.where('text LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end
end
