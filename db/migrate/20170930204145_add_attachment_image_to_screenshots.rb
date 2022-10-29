class AddAttachmentImageToScreenshots < ActiveRecord::Migration[4.2]
  def change
    add_column :screenshots,:image_file_name, :string
    add_column :screenshots,:image_content_type, :string
    add_column :screenshots,:image_file_size, :bigint
    add_column :screenshots,:image_updated_at, :datetime
  end
end
