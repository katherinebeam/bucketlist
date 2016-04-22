class AdventureItem < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :user

  has_many :assignments, dependent: :destroy
  has_many :lists, through: :assignments
end
