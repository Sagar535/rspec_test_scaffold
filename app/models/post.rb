class Post < ApplicationRecord
	validates :content, presence: true, length: {maximum: 140}
	validates :user, presence: true
	validates :title, length: {maximum: 30}
end
