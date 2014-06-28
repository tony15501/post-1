class Post < ActiveRecord::Base
	belongs_to :user
	validates :comentario,:titulo, :user_id, presence: true
	end
