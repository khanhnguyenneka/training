class Post < ActiveRecord::Base
  extend Enumerize

  belongs_to :category

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :state
  validates_presence_of :category_id

  enumerize :state, in: [:publish, :unpublish, :trash], default: :unpublish
end