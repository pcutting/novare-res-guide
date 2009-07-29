class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :waters
  has_many :weights
  has_many :quick_supports
  has_many :orders
  has_one :profile
  has_many :my_foods
  has_many :foods
  has_many :my_exercises
  has_many :exercises
  has_many :measurements
  has_many :goals
  has_many :blogs
  has_many :comments
  has_many :body_scans
  has_one :home
  
  
  
end
