require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt

  has_many :issues

  validates :last_name, :first_name, :phase, presence: true

  def password
    @password ||= Password.new(password_hash) if password_hash.present?
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    password == self.password
  end

end
