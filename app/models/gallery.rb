class Gallery < ActiveRecord::Base
  belongs_to :user
  has_many :gallery_items, :order => :position, :dependent => :destroy

  validates_uniqueness_of :name
end
