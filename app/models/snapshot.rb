class Snapshot < ApplicationRecord
  mount_uploaders :images, SnapshotUploader
  belongs_to :project
end
