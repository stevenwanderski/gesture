class Pose < ActiveRecord::Base
  mount_uploader :image, PoseUploader

  scope :gender, lambda { |value| where('gender = (?)', value) if value != "all" }
  scope :nude, lambda { |value| where('nude = (?)', value) if value != "all" }
  scope :random, order('rand()')
end
