class Project < ApplicationRecord
  validates :title, presense: true
  validates :description, presence: true
end
