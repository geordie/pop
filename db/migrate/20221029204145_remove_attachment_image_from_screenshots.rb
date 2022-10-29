class RemoveAttachmentImageFromScreenshots < ActiveRecord::Migration[4.2]
  def change
    remove_column :screenshots,:image_file_name
    remove_column :screenshots,:image_content_type
    remove_column :screenshots,:image_file_size
    remove_column :screenshots,:image_updated_at
  end
end
