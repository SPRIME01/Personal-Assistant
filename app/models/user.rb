class User < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  has_many :lists, :dependent => :destroy
  has_many :groups, :dependent => :destroy
  has_many :categories, :dependent => :destroy
  has_many :tags, :dependent => :destroy
  has_many :events, :dependent => :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
end
