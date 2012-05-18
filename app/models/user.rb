# == Schema Information
#
# Table name: users
#
#  id                 :integer(4)      not null, primary key
#  email              :string(255)     not null
#  first_name         :string(255)
#  last_name          :string(255)
#  password           :string(255)
#  encrypted_password :string(255)
#  salt               :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password


  validates :first_name,  :presence => true,
  					:length   => { :maximum => 50 }
  validates :last_name,  :presence => true,
  					:length   => { :maximum => 50 }					
  validates :email, :presence => true ,
  					:uniqueness => { :case_sensitive => false }

   validates :password, :presence => true,
  					   :confirmation => true, 
  					   :length => { :within => 6..40}	

     before_save:encrypt_password

    def has_password?(submitted_password)
  encrypted_password == encrypt(submitted_password)
 end

  class << self
  def authenticate(email,submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
  def authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt)? user: nil
  end

end

   private

 def encrypt_password 
  self.salt = make_salt if new_record?
  self.encrypted_password = encrypt(password)  

  end

  def encrypt(string)
   secure_hash("#{salt}--#{string}") 
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end

  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

end
