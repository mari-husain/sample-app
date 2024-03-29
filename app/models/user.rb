class User < ApplicationRecord
  
  # password
  has_secure_password
  
  # user validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  before_save{ email.downcase! }
  
  validates(:name, presence: true, length: {maximum: 50})
  validates(:email, presence: true, 
            uniqueness: {case_sensitive: false}, 
            length: {maximum: 255}, 
            format: {with: VALID_EMAIL_REGEX})
  validates(:password, presence:true, length: {minimum:6})
end
