class List < ActiveRecord::Base
  has_many :tasks
  has_many :groups
  has_many :categories
  has_many :events
  
  belongs_to :color
  belongs_to :user
end
