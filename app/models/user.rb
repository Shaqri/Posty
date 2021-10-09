class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  validates :name, :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: {case_sensitive: true}
  validates :name, length: {minimum: 5, max: 20}
  validates :password, length: {minimum: 6}

  
end
