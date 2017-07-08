class Book < ApplicationRecord
  has_many :authors
  belongs_to :user
  has_many :categories
  has_many :images, :dependent => :destroy
  has_many :comments
end
