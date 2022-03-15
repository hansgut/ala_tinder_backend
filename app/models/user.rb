class User < ApplicationRecord
  has_one :gallery
  has_one :profile
  after_create :create_gallery, :create_profile
  require 'securerandom'

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
