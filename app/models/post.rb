class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  validates :title, :description, presence: true
end
