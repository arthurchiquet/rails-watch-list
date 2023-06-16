class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates_presence_of :photo
  validates_presence_of :name
  validates :name, uniqueness: true
end
