class Article < ApplicationRecord
  include Visible
  
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: {minimum:10, maximum:100}
  validates :slug, presence: true
end
