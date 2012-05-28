class Downloadable < ProductDownload
  has_attached_file :attachment,
                    :url => "/downloadable/:id/:basename.:extension",
                    :path => ":rails_root/public/downloadable/:id/:basename.:extension"

  validates_attachment_presence :attachment

  before_save :set_title

  scope :enabled, where("product_downloads.enabled = 1")

  def filename
     return attachment_file_name
  end

  # if there are errors from the plugin, then add a more meaningful message
  def validate
    unless attachment.errors.empty?
      # uncomment this to get rid of the less-than-useful interrim messages
      # errors.clear
      errors.add :attachment, "Paperclip returned errors for file '#{attachment_file_name}' - check ImageMagick installation or image source file."
      false
    end
  end

  private

  def set_title
    if(self.title.nil? || self.title.empty?)
      self.title = self.filename
    end
  end
end

