class User < ActiveRecord::Base

  has_secure_password

  has_many :reviews

  validates :password_digest, presence: true, length: { minimum: 5 }
  validates_confirmation_of :password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }


  def description
    "#{password} #{password_confirmation} #{first_name} #{last_name} #{email}"
  end

end
