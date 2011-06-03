class VideopdfDownload < ActiveRecord::Base
  DOWNLOAD_TYPE = %w(video pdf)
  validates_inclusion_of :download_type, :in => DOWNLOAD_TYPE
  has_attached_file :videoimg, :styles => {  :thumb => "190x104>" },
    :default_url => "/images/default_video.jpg"

  has_attached_file :videopdf
end