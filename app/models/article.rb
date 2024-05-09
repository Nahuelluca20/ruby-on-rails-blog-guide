class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: {minimum:10, maximum:100}
  validates :slug, presence: true
end
