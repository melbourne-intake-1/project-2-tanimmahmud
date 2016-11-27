class School < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :qualification, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
