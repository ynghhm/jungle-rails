class User < ActiveRecord::Base

  has_secure_password

  monetize :first_name, numericality: true

  has_many :reviews

  validates :password, presence: true, length: { in: 5..20 }
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }


  def description
    "#{password} #{password_confirmation} #{first_name} #{last_name} #{email}"
  end

end
