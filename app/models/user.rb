class User < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  # include Gravtastic
  # gravtastic
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true
end
