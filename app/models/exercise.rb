class Exercise < ApplicationRecord
  validates :name, presence: true
  validates :weight, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :reps, numericality: { only_integer: true, greater_than_or_equal_to: 1 }, allow_nil: true
end
