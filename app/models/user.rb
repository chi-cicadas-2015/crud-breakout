require 'bcrypt'
class User < ActiveRecord::Base
  has_many :tshirts

  def self.authenticate(user_data)
    user = User.find_by(email: user_data[:email])
    user if user && user.password == user_data[:password]
  end

  def password
    @password ||= BCrypt::Password.new(self.password_hash)
  end

  def password=(value)
    @raw_password = value
    self.password_hash = @password = BCrypt::Password.create(value)
  end
end
