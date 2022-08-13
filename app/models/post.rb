class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :comments
  has_many :likes

  validates :title, presence: true
  validates :title, length: { maximum: 250 }


  after_save :update_post_counter

  private

  def update_post_counter
    author.increment!(:post_counter)
  end

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end
