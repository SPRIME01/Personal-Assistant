class Task < ActiveRecord::Base
  belongs_to :list
  belongs_to :group
  belongs_to :category
  belongs_to :user
  
  has_many :tags
  
end
