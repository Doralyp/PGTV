class User < ActiveRecord::Base
  include BCrypt
  has_and_belongs_to_many :shows

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(plaintext_password)
    self.password == plaintext_password
  end

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, uniqueness: true
  validates :password, presence: true
end
