require 'bcrypt'
class Member < ActiveRecord::Base
  include BCrypt
  dragonfly_accessor :image
  def password
    @password ||= Password.new(password_hash)
  end 

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password 
  end
end
