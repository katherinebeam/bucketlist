class Assignment < ActiveRecord::Base
  belongs_to :adventure_item
  belongs_to :list

  validates_uniqueness_of :item_id, :scope => :list_id
end
