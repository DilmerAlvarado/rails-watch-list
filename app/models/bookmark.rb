class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
  belongs_to :list
  belongs_to :movie
end

# belongs_to :movie
#   belongs_to :list
#   validates :comment, length: { minimum: 6 }
#   validates :movie, uniqueness: { scope: :list }
