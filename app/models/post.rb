class Post < ActiveRecord::Base
	belongs_to :user
	has_many  :comments
	validates :comentario,:titulo, :user_id, presence: true
	end
