class User < ApplicationRecord
  has_secure_password

  has_many :items

  validates :full_name, presence: true
  validates :address, presence: true 
  #validates_date :birthday, on_or_before: lambda { Date.current }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 5}
end
