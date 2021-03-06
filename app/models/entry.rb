class Entry < ActiveRecord::Base

  validates_presence_of :image, :headline, :description, :uuid, :major, :minor
  validates(:uuid, uniqueness: { scope: [ :major, :minor ] })

  mount_uploader :image, ImageUploader


end
