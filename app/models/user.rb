class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy

	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 6}, on: :create
end