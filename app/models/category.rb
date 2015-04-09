class Category < ActiveRecord::Base
  extend Enumerize

  has_many :posts

  validates_presence_of :title
  validates_presence_of :state

  enumerize :state, in: [:publish, :unpublish], default: :unpublish
end