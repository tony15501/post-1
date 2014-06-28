class HomeController < ApplicationController
  layout 'home'
	
		def index
  	@posts = Post.order(comentario: :asc)
			
			if user_signed_in?
				redirect_to controller: 'welcome', action: 'index'
			end		
		end
end
