class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	validates :comment, :post_id, :user_id,   presence: true
	
 

  
end
