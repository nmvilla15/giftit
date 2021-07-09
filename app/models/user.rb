class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true, length: { in: 3..10 }
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  has_many :posts, dependent: :destroy
  has_many :messages
  has_many :conversations
end
