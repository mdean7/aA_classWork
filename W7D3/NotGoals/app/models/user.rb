class User < ApplicationRecord
  validates :email, :age, :password_digest, :session_token, presence:true
  validates :username, :session_token, uniqueness:true
  validates :password, length:{minimum: 6, allow_nil:true}
  validates :username, presence:true

  after_initialize :ensure_session_token

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return user if user && i_password?(password)
    nil
  end
  
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
  
  def i_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password) # a winner is me
  end
  
  def reset_session_token!
    self.session_token = User.generate_session_token 
    self.save!
    self.session_token
  end
  
  def ensure_session_token
    self.session_token ||= User.generate_session_token 
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16) 
  end

end
