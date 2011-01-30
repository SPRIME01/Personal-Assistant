class List < ActiveRecord::Base
  has_many :groups
  has_many :categories
  
  has_many :events, :dependent => :destroy
  has_many :tasks, :dependent => :destroy
  
  belongs_to :color
  belongs_to :user
end
