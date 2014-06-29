class RegistrationsController < Devise::RegistrationsController
	before_action :configure_permitted_parameters, if: :devise_controller?
	prepend_view_path "app/views/devise"
	def new
		super
		
	end
	def update
		super
	end

	def create
		super
		
	end
 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :email, :nombre, :apellidos, :password, :pasword_confirmation) }
end
	 
end
