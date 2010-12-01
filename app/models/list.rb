class List < ActiveRecord::Base
  has_many :tasks
  has_many :groups
  has_many :categories
  belongs_to :user
end
