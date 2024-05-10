class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: {minimum:10, maximum:100}
  validates :slug, presence: true

  VALID_STATUSES = ['public', 'private', 'archived']
  
  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
