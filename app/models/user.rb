class User < ApplicationRecord
  has_one :gallery
  after_create :create_gallery
  require 'securerandom'

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true
end
