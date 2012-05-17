class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password

      def has_password?(submitted_password)
        password == submitted_password
 end

   class << self
  def authenticate(email,submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
end
end
