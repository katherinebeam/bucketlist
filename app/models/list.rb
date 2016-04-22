class List < ActiveRecord::Base
  belongs_to :user


  has_many :assignments, dependent: :destroy
  has_many :adventure_items, through: :assignment, order: 'position'
end
