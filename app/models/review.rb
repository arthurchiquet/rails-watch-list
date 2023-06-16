class Review < ApplicationRecord
  belongs_to :list

  validates_presence_of :comment, :rating
end
