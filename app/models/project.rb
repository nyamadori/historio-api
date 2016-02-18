class Project < ApplicationRecord
  has_many :snapshots
  validates :title, presence: true
  validates :description, presence: true
end
