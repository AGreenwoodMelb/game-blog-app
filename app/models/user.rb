class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: {minimum: 8}
  validates :password, confirmation: true
  validates :email, uniqueness: true, email_format: {message: 'has invalid format'}
  validates :username, uniqueness: true



  def is_admin?
    self.is_admin?
  end


end
