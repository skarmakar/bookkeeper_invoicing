module SessionsHelper
	def sign_in(user)
		cookies.permanent.signed[:remember_token]= [user.id]
		current_user = user
	end
end
