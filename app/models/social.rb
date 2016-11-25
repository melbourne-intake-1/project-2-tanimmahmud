class Social < ApplicationRecord
  belongs_to :user

  validates :network, presence: true
  validates :username, presence: true
end
