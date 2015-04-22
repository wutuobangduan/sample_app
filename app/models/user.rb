class User < ActiveRecord::Base

  # before_save { self.email = email.downcase }
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 30 }
  # this REGEX can not refuse "foo@bar..com"
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates(:email, presence: true, format:{ with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } )
  validates :password, length: { minimum: 6 }
  has_secure_password
end
