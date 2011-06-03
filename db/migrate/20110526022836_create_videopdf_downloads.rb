class CreateVideopdfDownloads < ActiveRecord::Migration
  def self.up
    create_table "videopdf_downloads", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.text   :videopdf_desc
      t.string   :download_type,                      :limit => 10
      t.string  :videopdf_file_name
      t.string  :videopdf_content_type
      t.integer  :videopdf_file_size
      t.datetime :videopdf_updated_at
      t.string  :videoimg_file_name
      t.string  :videoimg_content_type
      t.integer  :videoimg_file_size
      t.datetime :videoimg_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table "videopdf_downloads"
  end
end
