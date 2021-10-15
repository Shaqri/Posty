class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, as: :commentable
  validates :title, :description, presence: true

  def mentions
    @mentions ||= begin
                  regex = /@([\w]+)/
                  description.scan(regex).flatten!
                end
  end

  def mentioned_users
    @mentioned__users ||= User.where(name: mentions)
  end
end
