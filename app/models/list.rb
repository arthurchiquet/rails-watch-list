class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates_presence_of :name
  validates :name, uniqueness: true
end
