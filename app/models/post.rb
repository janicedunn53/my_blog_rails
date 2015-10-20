class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :title, :presence => true
  validates :content, :presence => true

  default_scope {order('updated_at DESC')}
end
