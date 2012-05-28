module ProductAttachmentsHelper

  def attachment_link(downloadable)
    extension_name = File.extname(downloadable.attachment_file_name)
    extension_name.slice!(0)
    extension_name.downcase!
    link = link_to (image_tag("attachment_extension/icons/#{extension_name}.gif"), downloadable.attachment.url(:product), :title => downloadable.description)
    link << " "
    link << link_to (downloadable.title, downloadable.attachment.url(:product), :title => downloadable.description)
    link << " (#{number_to_human_size(downloadable.attachment_file_size)})"

    link
  end

end

