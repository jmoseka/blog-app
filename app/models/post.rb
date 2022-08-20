class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }

  after_save :update_posts_counter

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end
